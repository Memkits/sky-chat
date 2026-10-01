
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

Validate with `calcit calcit.cirru --check-only`
and public namespace checks, then `yarn build` and
`node --test tests/*.test.mjs`. Tests exercise actual typed Respo events,
input/send/clear flows, whole-store updates, DOM adapters and persistence.
The original storage key is `workflow`, not the repository name. Startup does
not restore storage; this existing behavior is unchanged.

Build with `VITE_BASE_URL=https://cos-sh.tiye.me/Memkits/sky-chat/ yarn build`
with public upload verification handled by cos-upload-action's built-in verify
settings, without an extra CDN checker.
Shared font URLs, configuration keys and original server paths remain unchanged.
COS uploads frontend `dist` resources only.

`yarn dev` compiles Calcit once before starting Vite. For live Calcit edits, run
`calcit calcit.cirru js -w` in another terminal; no process manager is needed.
PR previews use `pr/<number>/<run-id>/<attempt>/` to isolate uploads; the
production prefix is unchanged. The COS action's built-in verification replaces
the standalone CDN build test; all chat and persistence business tests remain.

### License

MIT
