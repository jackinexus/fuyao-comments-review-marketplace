# Word report contract

The Duet preset must use the established comments-only report wording and order:

1. `1. 基本信息`: current video title, canonical URL, and platform-total observation time.
2. `2. 评论数据统计`: a two-column table with exactly `本次分析评论`, `评论覆盖率`, `其中主评论`, and `其中回复`.
3. `3. 评论区内容分析`, containing:
   - `3.1 评论区实际情况总结`: exactly three numbered findings.
   - `3.2 评论主题分布`: `主题 / 条数 / 占比 / 主评论 / 回复 / Likes`, including a conserved total row.
   - `3.3 高赞/高回复评论 Top20`: main-comment candidates only, `序号 / 评论 / Likes / Replies`.
   - `3.4 Duet 相关评论专项总结`: one sentence, `Duet 相关评论 X 条，其中判定为 Duet 有效评论 Y 条。`
   - `3.5 主评论中的 Duet/App 相关评论`: `序号 / 评论 / Likes / Replies / Duet 有效评论`.
   - `3.6 回复中的 Duet/App 相关信号`: `序号 / 主评论 / 主评论 Likes / 相关回复 / 回复 Likes / Duet 有效评论`.

The result cells use `算 / 不算 / 待复核 / 排除` plus a short concrete reason. A reply is shown with its parent for context but the parent is not counted twice. Empty related sections state that no confirmed related comments were found; they do not invent rows. The Word file must not replace these Duet-facing terms with generic `目标相关` or `符合目标` wording.

Comments or replies verified as written by the video publisher use `排除（发布者本人，不计入独立观众兴趣）`. They may appear for audit context but must not contribute to the Duet-effective total.

For `formal_partial` and `limited_sample`, use a prominent scope sentence such as `报告只分析本次读到的 57 条评论。` Add specific missing counts or missing replies when the evidence shows a gap. Use `读到 57 条 / 平台显示 57 条（100%）` when the figures are comparable. Use `平台评论总数未取得` when the total is unavailable, and state that the counts cannot be compared when their scope differs. Keep report mode names, request failures and completeness diagnostics in the audit trail and delivery conversation.

Preserve ordinary wording, emoji and public `@` mentions already present in quoted comment text. Do not add author handles from account metadata. Before writing dynamic text, minimally redact email addresses, phone/contact-number patterns and long identity/payment-number patterns. Redact `@` handles in generated narrative and keep visible redaction markers. Do not include internal API/provider names, pagination jargon, code paths, credential details, or unsupported exposure/conversion claims in the Word file.

The exact delivery copy must be hashed after metadata cleanup. Render every page, count the rendered pages, and visually inspect them before calling `record_report_qa` with `passed`. A failed artifact remains in the append-only QA receipt history; a passed receipt is immutable and cannot be silently replaced with a different hash or page count.

On macOS, use `scripts/render_comment_review_report.py` with the current Documents skill renderer so the bundled headless renderer can discover the system CJK fonts through an isolated task-level cache. This helper does not install fonts or call desktop Office. Missing Chinese glyphs, blank squares, clipped tables, broken emoji or large accidental page gaps fail visual QA.
