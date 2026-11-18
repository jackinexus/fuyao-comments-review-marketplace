# Fuyao Comments Review

这是 **Fuyao Comments Review** 的公开安装仓库。任何人都可以下载 Plugin 安装包；完整开发源码、云端代理源码和内部测试仍保存在私有开发仓库中。

访问和安装这个公开仓库不需要 GitHub 账号。GitHub 只负责公开分发安装包，不负责决定谁可以使用 Fuyao 的 TikHub 额度。

公开下载不代表获得 TikHub 使用权。评论采集仍需要完成 Fuyao 登录，并由产品所有者在服务端批准身份和额度。TikHub API Key 不在本仓库、Plugin、用户电脑、日志或报告中。

## 让 Codex 帮你安装

把下面整段文字发送给 Codex：

```text
请帮我安装 Fuyao Comments Review。

Marketplace 地址：
https://github.com/jackinexus/fuyao-comments-review-marketplace

固定版本：
v0.1.0-beta.2

请添加这个 Marketplace、安装其中的 Fuyao Comments Review Plugin，并帮我完成 Plugin 内的 Fuyao 登录和初始化。不要要求我提供 TikHub API Key、OAuth Token、Cookie 或密码。
```

Codex CLI 对应命令：

```zsh
codex plugin marketplace add https://github.com/jackinexus/fuyao-comments-review-marketplace.git --ref v0.1.0-beta.2
```

添加后，重启 Codex/ChatGPT 桌面应用，在 Plugins 中选择 `Fuyao Comments Review` 并安装。第一次使用时按提示在浏览器完成 Fuyao 登录；登录成功不等于已经获得额度，未开通时请联系产品所有者。

## 使用

安装并获授权后，在新的 Codex 对话中发送一条 Instagram Reel 或 TikTok 视频链接，例如：

```text
请使用 Fuyao Comments Review 复盘这个视频的评论区，并生成 Word 报告：
<视频链接>
```

评论分页、去重、覆盖计算、SQLite 和 Word 在用户电脑上完成；Cloud Run 只负责身份、白名单、原子配额和 TikHub 密钥代理。

## 当前支持

- macOS Apple Silicon
- macOS Intel
- Instagram Reel
- TikTok 视频

Windows、YouTube、YouTube Shorts 和其他平台不在当前版本范围内。

## 安全

- 不要在聊天、Issue 或日志中发送 API Key、密码、Cookie、OAuth Token 或其他凭证。
- 不要把私人身份证、银行卡或其他个人敏感信息写入报告或反馈。
- 安装包包含可公开查看的 Skill、评论规则和本地运行程序，但不包含完整开发源码或服务端 TikHub Key。

安全问题请按 [SECURITY.md](SECURITY.md) 说明私下报告。

## 许可

本产品不是开源软件。允许公开下载、安装和使用分发包不等于授予源码、再分发、转售或衍生开发权。详见 [LICENSE.md](LICENSE.md)。
