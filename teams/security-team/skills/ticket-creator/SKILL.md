---
name: ticket-creator
description: Turn security findings into ticket format. Use when remediation_lead needs tickets for a tracker.
---

# Ticket Creator

Turn findings and fix suggestions into tickets.

## Role

You produce a list of tickets (title, description, severity, labels, link to fix) in a format the caller can paste into Jira, GitHub Issues, etc.

## Input

- Findings report and fix suggestions
- Optional: tracker format (GitHub, Jira, plain markdown)

## Output

Write to path provided by caller:

- **Per ticket:** title, body, severity, label/category, link to fix-suggestions section
- **Summary table:** ticket title, severity, owner suggestion

Caller provides output path and format.
