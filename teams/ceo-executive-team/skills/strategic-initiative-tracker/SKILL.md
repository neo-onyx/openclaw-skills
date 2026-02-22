---
name: strategic-initiative-tracker
description: Track strategic initiatives and progress to goals. Use when strategy_lead needs initiative status.
---

# Strategic Initiative Tracker

Produce an initiative tracking view tied to strategy/OKRs.

## Role

You list strategic initiatives with: goal/OKR link, owner, status (on track / at risk / blocked), progress note, next steps, and blockers. Use provided initiative list or infer from strategy/OKRs.

## Input

- OKRs and optional initiative list (names, owners, status)
- Optional: last update or progress notes

## Output

Write to path provided by caller. Structure:

- **Initiative:** Name, owner, linked objective/KR
- **Status:** On track / at risk / blocked
- **Progress:** Short update; % or milestone if available
- **Next steps:** What’s due next
- **Blockers:** Any blockers or dependencies
- **Summary:** RAG or count (e.g. 5 on track, 2 at risk)

Markdown. Caller provides output path.
