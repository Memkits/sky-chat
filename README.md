
Sky Chat
----

> What if you dont read Chinese characters...

Demo http://r.tiye.me/Memkits/sky-chat/ .

### Usages

_TODO_

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

Use the formal Calcit/procs **0.30.1** pair with `caps --ci --strict`,
`yarn install --immutable` and `caps verify --toolchain`. Only `calcit.cirru`
and `deps.cirru` are canonical; CI rejects retired `compact.cirru` and
`package.cirru`. The unused Markdown module was removed; message rendering,
Chinese character coloring, example messages and existing TODO behavior remain.

Validate with `calcit calcit.cirru --check-only --all-defs`, all five public
namespace checks, `calcit calcit.cirru fix --workflow strict --verify`
and deprecated-call checks, then `yarn build` and
`node --test tests/*.test.mjs`. Tests exercise actual typed Respo events,
input/send/clear flows, whole-store updates, DOM adapters and persistence.
The original storage key is `workflow`, not the repository name. Startup does
not restore storage; this existing behavior is unchanged.

正式模块使用精确 tag：Reel 0.6.41、Respo 0.16.124、UI 0.8.0、JS-FFI 0.2.5。
升级后重新安装依赖、重启开发服务并刷新页面，不混用旧 runtime。
本轮迁移 3 处旧 Option helper 到 `.unwrap-or`，不改变默认值与字符算法；
全部 schema、两处页面 `hud!` 和原 9 项业务测试保留。
CI 明确要求完整 strict 状态 passed 且诊断为空，不仅检查命令退出码。
正式 Linux CI 与实际页面验收待完成；不把版本声明更新等同迁移验收通过。
内部使用真实 `reel.typed/State<Op,Store>` 和名义 Op，不再用 Unit 冒充 Reel Map。
Store、Message、InputData 仍是真实 Struct，输入分支接受旧 Map 和当前 Struct；
混合 key 的 UI 状态及事件解码入口保留必要 Dynamic 边界（分析仍有 4 处），不伪装零债务。
字符编码算法未改，退役 `section-by` 别名并使用 `chunks`。

原有 9 项业务测试保留，只适配 typed Reel、ChildPair 遍历及真实 StorageHost 合同。
bottom-tip 更新为精确正式 0.1.5；它在 Node 24 的 ESM 子路径导入问题仍未修复，
因此原有测试 resolve hook 暂时保留，见 [上游 #42](https://github.com/mvc-works/bottom-tip/issues/42)。
不新增验证脚本、测试矩阵或进程管理器，CI 沿用单 job 和原共享 COS 排队策略。

实际浏览器发现 Enter 发送后仍有默认换行，见 [#11](https://github.com/Memkits/sky-chat/issues/11)。
Node 回调测试不执行浏览器默认行为；本次类型迁移不把该问题宣称为已解决。

Build with `VITE_BASE_URL=https://cos-sh.tiye.me/Memkits/sky-chat/ yarn build`
with public upload verification handled by cos-upload-action's built-in verify
settings, without an extra CDN checker.
Shared font URLs, configuration keys and original server paths remain unchanged.
COS uploads frontend `dist` resources only.

`yarn dev` compiles Calcit once before starting Vite. For live Calcit edits, run
`calcit calcit.cirru -w` in another terminal; no process manager is needed.
PR previews use `pr/<number>/<run-id>/<attempt>/` to isolate uploads; the
production prefix is unchanged. The COS action's built-in verification replaces
the standalone CDN build test; all chat and persistence business tests remain.
The formal COS action v1.2.0 also checks HTML asset references internally;
no separate reference checker or repeated public verification is needed.

### License

MIT
