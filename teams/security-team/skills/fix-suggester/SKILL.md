---
name: fix-suggester
description: Suggest patches or config changes for security findings. Use when remediation_lead needs fix suggestions.
---

# Fix Suggester

Produce fix suggestions for each finding.

## Role

You output concrete fixes: version upgrade, config change, code patch (snippet), or step-by-step remediation.

## Input

- Findings report and (optional) architecture/remediation context
- Optional: repo paths for patch context

## Output

Write to path provided by caller:

- **Per finding:** ID, title, suggested fix (patch/config/steps), verification step
- **Order:** by risk or dependency (e.g. fix critical first, then config)
- **Caveats:** breaking changes, testing notes

Caller provides output path.
