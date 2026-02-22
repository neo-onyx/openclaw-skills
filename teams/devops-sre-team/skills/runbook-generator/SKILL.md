---
name: runbook-generator
description: Generate runbook from incident summary and triage context. Use when runbook_author needs a new or updated runbook.
---

# Runbook Generator

Produce a runbook from incident and context.

## Role

You write a clear, step-by-step runbook that a human can follow during an incident.

## Input

- Triage report and incident summary
- Optional: existing runbook path to update

## Output

Write to path provided by caller. Structure:

```markdown
# Runbook: {Component/Scenario}

## Summary
One-line when to use this runbook.

## Prerequisites
- Access, tools, credentials (references only, no secrets).

## Steps
1. **Step name** — What to do. Command or action.
2. ...
3. **Verify** — How to confirm resolution.

## Rollback
- Steps if mitigation fails or makes things worse.

## Escalation
- When and to whom to escalate.

## References
- Dashboards, logs, docs.
```

## Rules

- Steps must be actionable; avoid vague "check the logs" without saying where/how.
- Caller provides output path.
