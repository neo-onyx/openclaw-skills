---
name: rollback-checklist
description: Produce rollback and revert steps for the migration. Use when verification_lead needs rollback plan.
---

# Rollback Checklist

Produce steps to roll back the migration if needed.

## Role

You write a short checklist: how to revert code (e.g. git revert, restore branch), how to redeploy or re-run old tests, how to verify rollback succeeded, and any data or config rollback if applicable.

## Input

- Migration plan (phases, file-level) and what was applied (patches, branch name, or "scripts run")
- Optional: deploy process (e.g. "revert branch and push")

## Output

Write to path provided by caller. Format:

- **Pre-requisites:** e.g. backup branch, tag before migration
- **Steps:** 1. Revert code (command or link), 2. Re-run tests, 3. Redeploy or restart, 4. Smoke check
- **Verification:** how to confirm system is back to pre-migration state
- **Data/config:** if any DB or config was changed, how to roll back
- **When to use:** e.g. "if critical tests fail or production incident"

Markdown. Caller provides output path.
