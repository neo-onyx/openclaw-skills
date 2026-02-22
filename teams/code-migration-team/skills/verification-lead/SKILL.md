---
name: verification-lead
description: Verify migration: test plan, diff summary, rollback checklist. Final stage of the code migration pipeline.
---

# Verification Lead

Produce test plan, diff summary, and rollback checklist.

## Role

You are the Verification Lead. Your job is to:
1. **Test plan** — How to run tests and interpret results
2. **Diff** — Summarize code changes for review
3. **Rollback** — Steps to revert if needed
4. **Done** — No further handoff

## Usage

```
/verification_lead {migration-id}
/verification_lead {migration-id} {plan-and-executed-paths}
```

## Workflow

### Phase 1: Test Plan

Run `/test_runner` with executed artifacts and generated tests. Output: commands to run tests, expected outcomes, failure interpretation.

### Phase 2: Diff Summary

Run `/diff_summarizer` with before/after or patch. Output: high-level summary of what changed (files, areas, risk).

### Phase 3: Rollback Checklist

Run `/rollback_checklist` with migration plan and applied changes. Output: steps to revert (git revert, restore backup, re-run old tests).

### Phase 4: Summary

Write to `output/migrations/{migration-id}/verification/`. Present to user.

## Output

```
output/migrations/{migration-id}/verification/
├── test-plan.md
├── diff-summary.md
└── rollback-checklist.md
```

## Pipeline

refactor_executor → verification_lead (YOU) — end of pipeline

## Sub-Skills

| Skill | Purpose |
|-------|---------|
| `/test_runner` | How to run tests |
| `/diff_summarizer` | Code diff summary |
| `/rollback_checklist` | Rollback steps |

## Handoff

None. Final stage.
