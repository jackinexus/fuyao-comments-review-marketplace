---
name: fuyao-comments-review-setup
description: Set up or repair Fuyao Comments Review login inside Codex without asking the user to install Python, use pipx, or paste credentials.
---

# Fuyao Comments Review setup

Set up the installed Plugin through its local MCP tools. Never ask for an API key, Fuyao access token, Google password, Cookie, browser session, Authorization header, or opaque OIDC subject.

0. If the newly installed Plugin tools are not available in the installation chat, ask the user to fully restart Codex/ChatGPT and continue in a new chat. Do not bypass the packaged runtime with private source files, Python, pipx, copied credentials, or an ad-hoc terminal MCP.
1. Call `get_fuyao_login_status`. If it reports `authenticated`, skip Device Authorization and call `get_profile`.
2. Otherwise explain that the next step opens Fuyao's identity page in the user's browser and stores only a short-lived access token in a user-only file outside the Plugin. After the user agrees, call `start_fuyao_login` with `open_browser=true`.
3. If the browser did not open, show only the returned HTTPS `verification_uri` and one-time `user_code`. Do not expose or request any device code or token.
4. Ask the user to finish the browser step. After they confirm, call `complete_fuyao_login`. If it remains `authorization_pending`, wait for the user's next confirmation before retrying; do not loop rapidly. If it is expired or denied, start a new login only after explaining why.
5. When login is `authenticated`, call `get_profile`. Require `runtime_integrity.status=passed`; a failed integrity check means the installed runtime must be upgraded or reinstalled before collection, even when login is valid. `fuyao_authorization=active` together with passed runtime integrity means setup is complete. `authorization_denied` means the Google login succeeded but the owner has not yet enabled runtime access; ask the user to contact the Fuyao administrator and stop.
6. Do not start comment collection during setup. Do not describe a successful browser login as runtime authorization until `get_profile` reports active.
