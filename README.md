
Sky Chat
----

> What if you dont read Chinese characters...

Demo http://r.tiye.me/Memkits/sky-chat/ .

### Usages

_TODO_

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

Use stable Calcit/procs 0.27.0 with `caps --ci --strict`,
`yarn install --immutable` and `caps verify --toolchain`. Only `calcit.cirru`
and `deps.cirru` are canonical; CI rejects retired `compact.cirru` and
`package.cirru`. The unused Markdown module was removed; message rendering,
Chinese character coloring, example messages and existing TODO behavior remain.

Validate with `calcit calcit.cirru --check-only`, strict workflow verification
and public namespace checks, then `calcit calcit.cirru js` and
`node --test tests/*.test.mjs`. Tests exercise actual typed Respo events,
input/send/clear flows, whole-store updates, DOM adapters and persistence.
The original storage key is `workflow`, not the repository name. Startup does
not restore storage; this existing behavior is unchanged.

Build with `VITE_BASE_URL=https://cos-sh.tiye.me/Memkits/sky-chat/pr/ yarn vite build`
and run `node tests/check-cdn-path.mjs` with the same base. This validates local
generated JS/CSS URLs; cos-upload-action owns public upload verification.
Shared font URLs, configuration keys and original server paths remain unchanged.
COS uploads frontend `dist` resources only.

### License

MIT
