# Fuyao Comments Review

**Fuyao Comments Review** 是 Fuyao MKT 系列的第二款应用，由 **Jack Wu** 开发。它支持 Instagram Reel 与 TikTok 视频，结合视频内容和评论语境，逐条审核，判断和统计 Duet 相关评论和有效评论。

访问和安装这个公开仓库不需要 GitHub 账号。按提示选择获邀 Google 账号完成 Fuyao 登录。若账号尚未开通，请联系管理员开通使用权限和额度。

正式安装版本为 `v0.1.3`。也可以从 [Fuyao Comments Review 官网](https://www.fuyaomktmate.top/comments-review) 复制同一段安装提示词。

## 让 Codex 帮你安装

把下面整段文字发送给 Codex：

```text
请添加 Fuyao Comments Review 官方 Marketplace：
https://github.com/jackinexus/fuyao-comments-review-marketplace.git
固定使用 ref v0.1.3，安装其中的 Fuyao Comments Review，并帮我完成登录和初始化。
```

Codex CLI 对应命令：

```zsh
codex plugin marketplace add https://github.com/jackinexus/fuyao-comments-review-marketplace.git --ref v0.1.3
```

添加后，重启 Codex/ChatGPT 桌面应用，在 Plugins 中选择 `Fuyao Comments Review` 并安装。第一次使用时按提示在浏览器完成 Fuyao 登录；登录成功不等于已经获得额度，未开通时请联系产品所有者。

## 使用

安装并获授权后，在新的 Codex 对话中发送一条 Instagram Reel 或 TikTok 视频链接，例如：

```text
请用 Fuyao Comments Review 复盘评论区，生成报告。
<视频链接>
```

## 当前支持

- macOS Apple Silicon
- macOS Intel
- Instagram Reel 和 TikTok 视频的主评论与回复
- 评论覆盖率核对、统一规则审核和 Word 报告

当前仅支持 macOS。支持范围为单条视频的评论区复盘。

## 安全

- 不要在聊天、Issue 或日志中发送 API Key、密码、Cookie、OAuth Token 或其他凭证。
- 不要把私人身份证、银行卡或其他个人敏感信息写入报告或反馈。

安全问题请按 [SECURITY.md](SECURITY.md) 说明私下报告。

## 许可

本产品不是开源软件。允许公开下载、安装和使用分发包不等于授予源码、再分发、转售或衍生开发权。详见 [LICENSE.md](LICENSE.md)。
