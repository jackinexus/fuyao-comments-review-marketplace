# Fuyao Comments Review

这是 **Fuyao Comments Review** 的公开安装仓库。任何人都可以下载 Plugin 安装包；完整开发源码、云端代理源码和内部测试仍保存在私有开发仓库中。

访问和安装这个公开仓库不需要 GitHub 账号。首次采集评论前，请完成 Fuyao 登录，并由产品管理员开通使用权限和额度。

## 让 Codex 帮你安装

把下面整段文字发送给 Codex：

```text
请帮我安装 Fuyao Comments Review。

Marketplace 地址：
https://github.com/jackinexus/fuyao-comments-review-marketplace

固定版本：
v0.1.2-beta.1

请添加这个 Marketplace、安装其中的 Fuyao Comments Review Plugin，并帮我完成 Plugin 内的 Fuyao 登录和初始化。请通过浏览器完成登录，无需在聊天中提供凭证。
```

Codex CLI 对应命令：

```zsh
codex plugin marketplace add https://github.com/jackinexus/fuyao-comments-review-marketplace.git --ref v0.1.2-beta.1
```

添加后，重启 Codex/ChatGPT 桌面应用，在 Plugins 中选择 `Fuyao Comments Review` 并安装。第一次使用时按提示在浏览器完成 Fuyao 登录；登录成功不等于已经获得额度，未开通时请联系产品所有者。

## 使用

安装并获授权后，在新的 Codex 对话中发送一条 Instagram Reel 或 TikTok 视频链接，例如：

```text
请使用 Fuyao Comments Review 复盘这个视频的评论区，并生成 Word 报告：
<视频链接>
```

插件通过 Fuyao 服务获取评论。去重、覆盖率核对、评论审核和 Word 报告生成在用户的 Codex 环境中完成。

## 当前支持

- macOS Apple Silicon
- macOS Intel
- Instagram Reel
- TikTok 视频

Windows、YouTube、YouTube Shorts 和其他平台不在当前版本范围内。

## 安全

- 不要在聊天、Issue 或日志中发送 API Key、密码、Cookie、OAuth Token 或其他凭证。
- 不要把私人身份证、银行卡或其他个人敏感信息写入报告或反馈。
- 安装包包含可公开查看的 Skill、评论规则和本地运行程序。完整开发源码和服务端凭证均由 Fuyao 管理。

安全问题请按 [SECURITY.md](SECURITY.md) 说明私下报告。

## 许可

本产品不是开源软件。允许公开下载、安装和使用分发包不等于授予源码、再分发、转售或衍生开发权。详见 [LICENSE.md](LICENSE.md)。
