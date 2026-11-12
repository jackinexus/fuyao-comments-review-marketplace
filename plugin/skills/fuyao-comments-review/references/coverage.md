# Coverage requirements

- Target 100% where feasible; prioritize 90% or higher; 85% is the minimum usable line, never a pagination stop condition.
- Count unique stable comment IDs across main comments and replies using a same-time, same-scope denominator.
- Preserve ID-bearing non-text records even when text is empty. Mark unseen media as unreviewed instead of inventing meaning.
- A route is complete only after a natural end without cursor, request, or safety-cap abnormalities.
- Use exactly four report modes:
  - `verified_full`: the same-scope denominator is known, coverage is exactly 100%, main and reply pagination closed normally, reply floors are closed, there are no orphan replies or known structural gaps, authorization is valid, and semantic review is complete.
  - `formal_partial`: coverage is at least 85% but below 100% under the same known scope, collection is structurally closed as above, authorization is valid, and semantic review is complete. Label the Word as partially covered and never call it complete or full. Treat 90%–below 100% as high-coverage partial and 85%–below 90% as minimum-usable partial.
  - `limited_sample`: coverage is below 85%, the denominator is unknown or mismatched, pagination/reply floors are not closed, orphan replies or known structural gaps exist, and the user explicitly accepts a limited-sample report for this task. Label it visibly and do not generalize to the whole comment population.
  - `blocked`: authorization or semantic review is incomplete, no usable comments were collected, or limited-sample delivery is needed but the user did not explicitly accept it.
- A numeric 100% is not `verified_full` when pagination, reply closure, scope, or structural evidence is unverified. Per-task limited-sample acceptance never bypasses authorization, semantic completeness, or the no-comment block.
