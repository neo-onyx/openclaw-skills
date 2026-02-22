---
name: codemod-scripts
description: Generate transform scripts or patches from migration plan and patterns. Use when refactor_executor needs to apply changes.
---

# Codemod Scripts

Produce runnable transform scripts or patches.

## Role

You generate scripts (e.g. jscodeshift, codemod, or sed/awk) or unified-diff patches that implement the changes for the given phase. Scripts should be idempotent where possible and safe to run (no data loss).

## Input

- Phase plan and file-level plan for the phase
- Pattern list and target replacement (e.g. "oldFn → newFn", "import X from 'old' → from 'new'")
- Optional: tool preference (jscodeshift, ast-grep, patch only)

## Output

Write to path provided by caller:

- **Scripts:** e.g. `transform.js` with instructions to run (e.g. `jscodeshift -t transform.js path/`)
- **Or patches:** one patch per file or one combined patch; apply with `git apply` or similar
- **Dry-run:** recommend dry-run first and how to validate
- **Rollback:** one-line note (e.g. git checkout before re-run)

Caller provides output path and tool preference.
