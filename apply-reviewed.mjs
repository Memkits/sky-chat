import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync,mkdirSync} from 'node:fs';
assert.equal(process.env.GITHUB_ACTIONS,'true');assert.equal(process.platform,'linux');
assert.equal(execFileSync('calcit',['-v'],{encoding:'utf8'}).trim(),'0.30.1');
const run=(...a)=>execFileSync('calcit',['calcit.cirru',...a],{encoding:'utf8',maxBuffer:48e6,stdio:['ignore','pipe','pipe']});
const blob=()=>execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}).trim();
assert.equal(blob(),'b9e94a3667e09029fff4da44bdf3aa379d552997');
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):norm(x)])):v;
const q=(...a)=>norm(JSON.parse(run('query',...a,'--format','json')).data);
const input=JSON.parse(readFileSync('reviewed.json','utf8'));
const before={config:norm(input.config.data),namespaces:input.namespaces.map(x=>norm(x.data)),defs:input.definitions.map(x=>norm(x.data))};
assert.equal(before.defs.length,39);assert.equal(before.namespaces.length,6);
assert.equal(before.defs.reduce((n,d)=>n+d.tests.length+d.examples.length,0),0);
assert.deepEqual(q('config'),before.config);
assert.deepEqual(q('ns').namespaces.map(n=>q('ns',n)),before.namespaces);
for(const d of before.defs)assert.deepEqual(q('def',d.id),d);
const expected=structuredClone(before),ops=[],sites=[],counts={merge:0,css:0,length:0};
const show=(id,path)=>JSON.parse(run('tree','show',id,'--path','@'+path.join('.'),'--format','json')).tree;
function replace(id,path,old,value){assert.deepEqual(show(id,path),old);ops.push(['tree','replace',id,'--path','@'+path.join('.'),'--input-format','json-ast','--code',JSON.stringify(value)]);sites.push({id,path,before:old,after:value});}
function walk(x,path,id){
  if(!Array.isArray(x)||['quote','quasiquote','comment',';','defmacro'].includes(x[0]))return x;
  if(x[0]==='merge'){assert.ok(id.startsWith('app.comp.container/'));assert.ok(x.length>=3);replace(id,[...path,0],'merge','.merge');x[0]='.merge';counts.merge++;}
  if(x[0]==='count'){
    assert.equal(id,'app.comp.container/pad9');assert.deepEqual(x,['count','acc']);
    const d=before.defs.find(d=>d.id===id);
    assert.deepEqual(d.schema.find(p=>Array.isArray(p)&&p[0]===':args')[1],['[]',['::',"'List","'Number"]]);
    replace(id,[...path,0],'count','.len');x[0]='.len';counts.length++;
  }
  if(x[0]==='{}'&&id.startsWith('app.comp.container/'))for(let i=1;i<x.length;i++){
    const pair=x[i];if(!Array.isArray(pair)||pair.length!==2)continue;
    const[k,v]=pair;let value;
    if([':width',':height',':margin-right',':font-size'].includes(k)&&typeof v==='string'&&/^\d+$/.test(v))value='|'+v+'px';
    else if([':display',':font-weight',':border',':cursor',':word-break'].includes(k)&&typeof v==='string'&&v.startsWith(':'))value='|'+v.slice(1);
    if(value!==undefined){replace(id,[...path,i,1],v,value);pair[1]=value;counts.css++;}
  }
  return x.map((v,i)=>walk(v,[...path,i],id));
}
for(const d of expected.defs)d.code=walk(d.code,[],d.id);
assert.deepEqual(counts,{merge:5,css:17,length:1});assert.equal(ops.length,23);
for(const d of before.defs){const e=expected.defs.find(x=>x.id===d.id);for(const k of Object.keys(d).filter(k=>k!=='code'))assert.deepEqual(e[k],d[k]);if(!d.id.startsWith('app.comp.container/'))assert.deepEqual(e.code,d.code);}
mkdirSync('acceptance',{recursive:true});
for(const[name,value]of Object.entries({before,expected,sites,counts,operations:ops}))writeFileSync('acceptance/'+name+'.json',JSON.stringify(value,null,2));
const txn=['edit','transaction','--file','acceptance/operations.json','--format','json'];
const preview=JSON.parse(run(...txn,'--dry-run'));assert.ok(preview.scoped_revision);
writeFileSync('acceptance/preview.json',JSON.stringify(preview,null,2));
writeFileSync('acceptance/applied.json',run(...txn,'--expect-revision',preview.scoped_revision));
const after={config:q('config'),namespaces:q('ns').namespaces.map(n=>q('ns',n)),defs:expected.defs.map(d=>q('def',d.id))};
assert.deepEqual(after,expected);writeFileSync('acceptance/after.json',JSON.stringify(after,null,2));
writeFileSync('acceptance/snapshot-after-blob.txt',blob());
