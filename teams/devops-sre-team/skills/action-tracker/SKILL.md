---
name: action-tracker
description: Turn post-mortem findings into actionable items or tickets. Use when post_mortem_lead needs an actions list.
---

# Action Tracker

Convert post-mortem findings into tracked action items.

## Role

You produce a list of actions with owner, due date, type (fix, process, doc), and priority.

## Input

- Post-mortem (timeline, RCA, runbook)
- Optional: owner placeholder, due offset (e.g. +2 weeks)

## Output

Write to path provided by caller. Format:

```markdown
# Post-Mortem Actions: {incident-id}

| ID | Action | Type | Owner | Due | Priority |
|----|--------|------|-------|-----|----------|
| 1  | ...    | fix  | TBD   | ... | P0       |
| 2  | ...    | doc  | TBD   | ... | P1       |
```

Or ticket-ready format (e.g. GitHub issue template). Caller specifies.

## Rules

- Each action should be specific and verifiable. Caller provides output path.
