---
name: fuyao-comments-review
description: Review only the comment section of an Instagram Reel or TikTok video, maximize auditable comment coverage, apply a confirmed rule pack with video and thread context, and generate a Word report. Do not use for full F3, YouTube, YouTube Shorts, creator pricing, CPM, or historical creator baselines.
---

# Fuyao Comments Review

Use the local Fuyao Comments MCP to collect comments. Fuyao owns the TikHub account and enforces server-side quotas; the user never receives the TikHub Key. Never ask the user to paste a TikHub API Key, Fuyao access token, Cookie, or browser session into chat, a command argument, a repository file, or a report. If runtime authorization is missing, use the Plugin's `get_fuyao_login_status`, `start_fuyao_login`, and `complete_fuyao_login` tools; the Device Authorization flow stores only a short-lived Fuyao access token outside the Plugin and never stores a refresh token. The Terminal login command is a fault-recovery fallback, not the normal user flow.

## Workflow

1. Accept exactly one Instagram Reel or TikTok video URL. Explain that YouTube, YouTube Shorts, and other platforms are not supported in phase one.
2. Call `get_profile` first. If `provider_configured` is false or `fuyao_authorization` is not `active`, stop collection and complete the in-Plugin login flow; never request the token value. If login is authenticated but `get_profile` reports `authorization_denied`, explain that the owner must enable runtime access and stop. Otherwise invoke `start_comment_collection` on the local stdio MCP. GitHub access controls who receives the source, while the Cloud Run relay independently verifies the Fuyao identity, revocation state, operation allowlist and atomic quota on every provider request. Poll `get_collection_status` until the task is complete or reports a safe failure code.
3. Require a same-scope platform denominator, unique read count, main/reply split, pagination state, source contribution, and explicit stop reasons. Read [coverage.md](references/coverage.md) before deciding whether collection is complete.
4. Continue every available recovery path even after reaching 85% or 90%. Apply the four-mode contract in [coverage.md](references/coverage.md): only exact, structurally closed 100% is `verified_full`; structurally closed 85%–below 100% is `formal_partial`; deficient or unverified collection is `limited_sample` only after task-specific user acceptance; otherwise it is `blocked`.
5. Obtain the video context needed to interpret references, tone, sarcasm, and emotional targets. Use local transcript and a small number of key frames when needed; downloading a video is not proof that it was understood.
6. Freeze `get_duet_rule_pack` for the run. Before judging any comment, read its `decision_steps`, `precedence_rules`, `invariants`, complete `examples`, `operational_cases`, version and digest. Do not reduce them to keyword matching. Page through `get_collection_comments` until `has_more` is false. Review each read comment semantically; every judgment must include exactly one theme, target relatedness, tone, emotion target, Chinese translation, result, rule ID, reason, reference basis, explicit `payment_congratulations` and `creator_comment` booleans, and evidence references. A qualifying judgment normally has positive/neutral tone and direct, verified-video or cited-parent reference basis. The only uncertain-tone exception is `E_AD_QUESTION`: when the question is confirmed to reference Duet, has no explicit negative, sarcastic or ad-fatigue evidence, and meets the confidence threshold, an uncertain tone still defaults to qualifying. Replies are judged independently, while their parent comments provide context. When a comment payload returns `author_is_video_creator=true`, set `creator_comment=true`, use `excluded + X_CREATOR`, and cite its `creator_identity_evidence_id`; it never counts as a Duet effective comment. Do not infer creator identity when the field is unknown. Other unclear identity, reference or tone remains pending.
7. Submit judgments in batches of at most 100 with `submit_review_batch`, then call `finalize_comment_review`. Do not proceed while the deterministic completeness check fails.
8. Call `get_report_readiness`. Generate an unqualified full Word only for `verified_full`; generate a visibly partial-coverage Word for `formal_partial`; generate a visibly limited-sample Word only for `limited_sample`; stop for `blocked`. Never describe `formal_partial` or `limited_sample` as complete or full.
9. Generate the Word report from the same run evidence using the Documents capability. Read [report-contract.md](references/report-contract.md), preserve original wording and emoji where possible, remove personal document metadata, render every page, and complete visual QA before delivery.
10. Compute the SHA-256 of the exact delivery Word and count the rendered pages. Call `record_report_qa` with `passed` only after every page passes visual QA; use `failed` for a rendered artifact that needs revision. Never mark `passed` from document-generation success alone. The MCP stores only the audit receipt and never receives the Word file.

## Boundaries

- The local MCP collects and normalizes comments; the user's Codex session performs semantic analysis and report generation.
- Source access is granted through a private GitHub repository. Do not describe this proprietary distribution as open source or imply that access grants redistribution rights.
- Do not call full F3, Gemini, or another owner-funded model API.
- Do not infer downloads, registrations, sales, or completion rates from comments.
- Keep technical diagnostics in the delivery conversation; keep the Word report concise and business-readable.
- Read [security.md](references/security.md) when authentication, authorization, credentials, or deployment is involved.
- Read [report-contract.md](references/report-contract.md) before creating or changing the Word format.
