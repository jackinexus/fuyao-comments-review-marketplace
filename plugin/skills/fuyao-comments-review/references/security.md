# Security requirements

- Source access is controlled by the private GitHub repository. A revoked account cannot receive later versions, but revocation cannot erase a clone that was already downloaded.
- Runtime access is separately controlled by Fuyao OIDC identity and Firestore revocation/quota state. Removing GitHub access does not revoke an unexpired runtime credential; both controls must be updated.
- The local MCP is single-user and uses stdio. It stores only a short-lived Fuyao access token in a user-only file outside the repository; it does not store a refresh token or TikHub Key.
- The TikHub API Key exists only in Fuyao Secret Manager. Never request or persist it in chat, Plugin files, repository files, command arguments, reports, screenshots, logs, test data, environment variables, or the user device.
- Do not expose Fuyao tokens, authorization headers, cookies, full opaque cursors, or provider raw error bodies.
- Cloud Run accepts only fixed structured Instagram/TikTok operations, revalidates parameters and identity, and atomically enforces per-task, daily, monthly, and organization quotas before reading the Key.
- Local request budgets, finite retry, circuit breaking and coverage gates remain mandatory in addition to server-side limits.
