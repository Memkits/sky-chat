
Sky Chat
----

> What if you dont read Chinese characters...

Demo http://r.tiye.me/Memkits/sky-chat/ .

### 本轮使用者影响

继续配对正式 Calcit / procs 0.30.1；升级精确正式依赖后重新安装、重启开发服务并完整刷新。
聊天字符算法、示例消息、Store/Message/InputData/Op、存储 key、HUD 和部署路径保持。
UI 升级可能带来样式差异，不承诺逐像素相同；启动不恢复存档、Enter 默认换行的既有行为不改。
本轮不授权合并、生产部署或发版。

五处 Map merge 改用 `.merge`，pad9 的 List count 改为 `.len`，
十七处静态 CSS 叶子改为等价 String，减少样式异构值。
原九项测试和断言、真实事件 Map 解码及所有 schema 保持；不新增强转、质量预算、
防御测试框架、重复 COS 校验或 concurrently。既有开放状态与 FFI 边界不伪装零债务。

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
`node --test tests/*.test.mjs`. Tests exercise Respo's real Map event shape,
input/send/clear flows, whole-store updates, DOM adapters and persistence.
The original storage key is `workflow`, not the repository name. Startup does
not restore storage; this existing behavior is unchanged.

正式模块使用精确 tag：Reel 0.6.42、Respo 0.16.126、UI 0.8.1、JS-FFI 0.2.6。
升级后重新安装依赖、重启开发服务并刷新页面，不混用旧 runtime。
此前迁移 3 处旧 Option helper 到 `.unwrap-or`，不改变默认值与字符算法；
除两个内部事件适配器收紧为真实 `Map<Tag,Dynamic>` 参数外，其他 schema 不变；
两个回调入口先受检解码 Map，再读取 String 载荷。两处页面 `hud!` 保留。
原 9 项业务测试和断言保留，只把错误的 RespoEvent Struct 夹具改成真实 Map 形状，
不将单独导出的 Struct 当作 DOM 回调载荷，详见 [Respo #275](https://github.com/Respo/respo.calcit/issues/275)。
CI 明确要求完整 strict 状态 passed 且诊断为空，不仅检查命令退出码。
正式 Linux 隔离验收 39962521809 已通过 222 个定义检查、完整 strict 和原 9 项测试。
同源实际页面已验收 DOM 输入、按钮发送清空、字符呈现及刷新后原启动行为；
Enter 仍留下默认换行，见下方既有 #11，不把 Node 回调测试当作默认行为证明。
内部使用真实 `reel.typed/State<Op,Store>` 和名义 Op，不再用 Unit 冒充 Reel Map。
Store、Message、InputData 仍是真实 Struct，输入分支接受旧 Map 和当前 Struct；
混合 key 的 UI 状态及异构事件 Map 值保留必要 Dynamic 边界，不伪装零债务。
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
