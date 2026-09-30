import assert from "node:assert/strict";
import { test } from "node:test";
import { registerHooks } from "node:module";
import * as c from "../js-out/calcit.core.mjs";
import { store, Op, InputData, read_input_branch } from "../js-out/app.schema.mjs";
import { updater } from "../js-out/app.updater.mjs";
import * as app from "../js-out/app.comp.container.mjs";
import { reel } from "../js-out/reel.schema.mjs";
import { RespoEvent } from "../js-out/respo.schema.mjs";
import { component_$q_, component_tree } from "../js-out/respo.util.detect.mjs";
import { make_string } from "../js-out/respo.render.html.mjs";
const t = c.init_tags(["store", "states", "data", "content", "cursor", "messages", "token", "message", "rename", "input", "event", "children", "keydown", "click"]);
const map = c._$n__$M_;
const read = (value, key) => c.option_$o_unwrap(c.get(value, t[key]));
const op = (key, ...args) => c._PCT__$o__$o_(Op, t[key], ...args);
const inputData = (content) => c._$n__PCT__$M_(InputData, t.content, content);
const root = (state) => c.assoc(reel, t.store, state);
const event = (values) => c._$n__PCT__$M_(RespoEvent, ...RespoEvent.fields.flatMap((field) => [field, values[field.value] ?? null]));
function handlers(node, kind, found = []) {
  if (component_$q_(node)) return handlers(c.option_$o_unwrap(component_tree(node)), kind, found);
  const events = c.get(node, t.event);
  if (c.option_$o_some_$q_(events)) {
    const handler = c.get(c.option_$o_unwrap(events), kind);
    if (c.option_$o_some_$q_(handler)) found.push(c.option_$o_unwrap(handler));
  }
  const children = c.get(node, t.children);
  if (c.option_$o_some_$q_(children)) for (const pair of c.option_$o_unwrap(children).toArray()) handlers(c.option_$o_unwrap(c.nth(pair, 1)), kind, found);
  return found;
}
test("actual initial typed Store renders the chat and empty input", () => {
  const html = make_string(app.comp_container(root(store)));
  assert.ok(html.includes("Sky Chat"));
  assert.ok(html.includes("Message..."));
});
test("input branch preserves none, typed InputData and legacy Map states", () => {
  assert.ok(c.option_$o_none_$q_(read(read_input_branch(map(t.cursor, c._$L_(t.input))), "data")));
  for (const value of [inputData("Fixture"), map(t.content, "Fixture")]) {
    const branch = read_input_branch(map(t.cursor, c._$L_(t.input), t.data, value));
    assert.equal(read(c.option_$o_unwrap(read(branch, "data")), "content"), "Fixture");
  }
  assert.throws(() => read_input_branch(map(t.cursor, c._$L_(t.input), t.data, map(t.content, 42))));
});
test("actual RespoEvent input callback emits one nominal states Enum and re-renders", () => {
  const callbacks = handlers(app.comp_container(root(store)), t.input);
  assert.equal(callbacks.length, 1);
  const operations = [];
  callbacks[0](event({ type: t.input, value: "Typed input" }), (...args) => { assert.equal(args.length, 1); operations.push(args[0]); });
  assert.equal(operations.length, 1);
  const next = updater(store, operations[0], "fixture", 0);
  assert.ok(c.struct_$q_(next));
  assert.equal(read(next, "token"), read(store, "token"));
  assert.equal(read(read(read(read(next, "states"), "input"), "data"), "content"), "Typed input");
  assert.ok(make_string(app.comp_container(root(next))).includes("Typed input"));
});
test("real Enter callback sends a typed message, clears input and schedules scrolling", () => {
  const before = updater(store, op("states", c._$L_(t.input), inputData("你好 fixture")), "fixture", 0);
  const callbacks = handlers(app.comp_container(root(before)), t.keydown);
  assert.equal(callbacks.length, 1);
  const previous = globalThis.window;
  const previousTimer = globalThis.setTimeout;
  const delays = [];
  const operations = [];
  try {
    globalThis.window = { setTimeout(callback, delay) { assert.equal(typeof callback, "function"); delays.push(delay); return 1; } };
    globalThis.setTimeout = globalThis.window.setTimeout;
    callbacks[0](event({ type: t.keydown, key: "Enter" }), (...args) => { assert.equal(args.length, 1); operations.push(args[0]); });
    assert.equal(operations.length, 2);
    const sent = operations.reduce((state, operation) => updater(state, operation, "fixture", 0), before);
    const message = c.option_$o_unwrap(c.first(read(sent, "messages")));
    assert.ok(c.struct_$q_(message));
    assert.equal(read(message, "message"), "你好 fixture");
    assert.equal(read(message, "token"), read(store, "token"));
    assert.equal(read(read(read(read(sent, "states"), "input"), "data"), "content"), "");
    assert.ok(make_string(app.comp_container(root(sent))).includes("Sky Chat"));
    assert.deepEqual(delays, [100]);
  } finally {
    globalThis.setTimeout = previousTimer;
    if (previous === undefined) delete globalThis.window; else globalThis.window = previous;
  }
});
test("actual send click focuses the textarea and retains single Enum operations", () => {
  const before = updater(store, op("states", c._$L_(t.input), inputData("Click message")), "fixture", 0);
  const callbacks = handlers(app.comp_container(root(before)), t.click);
  assert.equal(callbacks.length, 2);
  const doc = globalThis.document;
  const timer = globalThis.setTimeout;
  const calls = [];
  const operations = [];
  try {
    globalThis.document = { querySelector(selector) { assert.equal(selector, "textarea"); return { focus() { calls.push("focus"); } }; } };
    globalThis.setTimeout = (callback, delay) => { calls.push(delay); return 1; };
    callbacks[1](null, (...args) => { assert.equal(args.length, 1); operations.push(args[0]); });
    assert.equal(operations.length, 2);
    const next = operations.reduce((state, operation) => updater(state, operation, "fixture", 0), before);
    assert.equal(read(c.option_$o_unwrap(c.first(read(next, "messages"))), "message"), "Click message");
    assert.deepEqual(calls, ["focus", 100]);
  } finally {
    globalThis.setTimeout = timer;
    if (doc === undefined) delete globalThis.document; else globalThis.document = doc;
  }
});
test("actual fullscreen and scroll adapters call declared host methods", () => {
  const doc = globalThis.document;
  const calls = [];
  try {
    globalThis.document = { querySelector(selector) {
      if (selector === "body") return { requestFullscreen() { calls.push("fullscreen"); } };
      assert.equal(selector, "#message-area > :last-child");
      return { scrollIntoViewIfNeeded() { calls.push("scroll"); } };
    } };
    app.request_fullscreen_$x_();
    app.scroll_last_$x_();
    assert.deepEqual(calls, ["fullscreen", "scroll"]);
    globalThis.document.querySelector = () => null;
    app.request_fullscreen_$x_();
    app.scroll_last_$x_();
  } finally { if (doc === undefined) delete globalThis.document; else globalThis.document = doc; }
});
test("blank Enter and non-Enter keys do not dispatch messages", () => {
  for (const [content, key] of [["", "Enter"], ["text", "Escape"]]) {
    const state = updater(store, op("states", c._$L_(t.input), inputData(content)), "fixture", 0);
    const callback = handlers(app.comp_container(root(state)), t.keydown)[0];
    callback(event({ type: t.keydown, key }), () => assert.fail("Unexpected dispatch"));
  }
});
test("rename preserves prior messages and colors/rendering remain deterministic", () => {
  const renamed = updater(store, op("rename", "Fixture author"), "fixture", 0);
  const next = updater(renamed, op("message", "Hello"), "fixture2", 0);
  const message = c.option_$o_unwrap(c.first(read(next, "messages")));
  assert.equal(read(message, "token"), "Fixture author");
  assert.equal(c._$n_list_$o_count(read(store, "messages")), 0);
  assert.equal(app.generate_color("同一个 token"), app.generate_color("同一个 token"));
  assert.ok(make_string(app.comp_messages(read(next, "messages"))).length > 100);
});
test("real main persistence preserves the original workflow key and typed message fields", async () => {
  const doc = globalThis.document;
  const win = globalThis.window;
  const storage = globalThis.localStorage;
  const writes = [];
  const hooks = registerHooks({ resolve(specifier, context, nextResolve) {
    return nextResolve(specifier === "virtual-dom/create-element" ? "virtual-dom/create-element.js" : specifier, context);
  } });
  try {
    globalThis.document = {
      querySelector(selector) { assert.equal(selector, ".app"); return { fixture: "mount" }; },
      createElement() { return { getContext() { return { measureText() { return { width: 0 }; } }; } }; },
    };
    globalThis.localStorage = { setItem(key, value) { writes.push([key, value]); } };
    globalThis.window = { localStorage: globalThis.localStorage };
    const main = await import("../js-out/app.main.mjs");
    main.dispatch_$x_(op("rename", "Saved token"));
    main.dispatch_$x_(op("message", "Saved message"));
    main.persist_storage_$x_();
    assert.equal(writes.length, 1);
    assert.equal(writes[0][0], "workflow");
    const saved = c.parse_cirru_edn(writes[0][1]);
    assert.equal(read(saved, "token"), "Saved token");
    const message = c.option_$o_unwrap(c.first(read(saved, "messages")));
    assert.equal(read(message, "message"), "Saved message");
    assert.equal(read(message, "token"), "Saved token");
  } finally {
    hooks.deregister();
    if (doc === undefined) delete globalThis.document; else globalThis.document = doc;
    if (win === undefined) delete globalThis.window; else globalThis.window = win;
    if (storage === undefined) delete globalThis.localStorage; else globalThis.localStorage = storage;
  }
});
