# Security requirements

- The Plugin is available for public download. Fuyao accounts require separate approval to use comment collection.
- Fuyao verifies identity, access and quotas before comment collection.
- The local MCP stores only a short-lived Fuyao access token in a user-only file outside the repository.
- Users sign in through Fuyao. Never request API keys or put them in chat, Plugin files, repository files, command arguments, reports, screenshots, logs, test data, environment variables, or the user device.
- Do not expose Fuyao tokens, authorization headers, cookies, full opaque cursors, or provider raw error bodies.
- Fuyao validates requests for supported Instagram and TikTok videos and enforces configured quotas.
- Local request budgets, finite retry, circuit breaking and coverage gates remain mandatory in addition to server-side limits.
