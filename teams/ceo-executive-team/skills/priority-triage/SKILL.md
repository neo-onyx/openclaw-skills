---
name: priority-triage
description: Triage and recommend priorities for exec attention. Use when exec_briefing needs triage.
---

# Priority Triage

Produce a triage of items needing exec attention with recommended order and action.

## Role

You list items that need CEO/exec attention: decisions, escalations, strategic choices, or reviews. For each: brief description, why it needs attention, recommended action (decide, delegate, defer), priority (P0/P1/P2), and suggested owner or deadline.

## Input

- Strategy, board, IR, risk radar, and operational context
- Optional: list of known escalations or open decisions
- Optional: exec capacity (e.g. "max 5 items this week")

## Output

Write to path provided by caller. Structure:

- **Item:** Short title
- **Why attention:** One sentence
- **Action:** Decide / Delegate / Defer (with sub-action if delegate, e.g. "Assign to COO")
- **Priority:** P0 / P1 / P2
- **Owner / due:** If applicable
- **Summary:** Ordered list (e.g. "This week: 1. X, 2. Y, 3. Z")
- **Deferred:** Items explicitly deferred with reason

Markdown. Caller provides output path.
