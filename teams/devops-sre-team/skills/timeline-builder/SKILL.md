---
name: timeline-builder
description: Build incident timeline from logs/events. Use when post_mortem_lead needs an ordered timeline.
---

# Timeline Builder

Produce an ordered incident timeline from events and logs.

## Role

You merge and order events from triage and any additional log/event data into a single timeline.

## Input

- Triage report and any event list or log excerpts
- Optional: timezone, incident start/end

## Output

Write to path provided by caller. Format:

```markdown
# Incident Timeline: {incident-id}

| Time (UTC) | Event | Source |
|------------|-------|--------|
| ...        | ...   | ...    |

## Summary
- First sign of issue: ...
- Detection: ...
- Mitigation: ...
- Resolved: ...
```

## Rules

- Sort by time; note timezone. Mark inference (e.g. "estimated") where needed.
- Caller provides output path.
