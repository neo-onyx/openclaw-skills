---
name: okr-designer
description: Design OKRs from strategy and context. Use when strategy_lead needs OKRs.
---

# OKR Designer

Produce objectives and key results from strategy and context.

## Role

You draft OKRs: 3–5 objectives with 2–4 key results each. Key results should be measurable and time-bound. Tie to strategy or prior OKRs where provided.

## Input

- Period (e.g. Q1, FY); optional strategy doc, prior OKRs, constraints (e.g. "focus on growth")

## Output

Write to path provided by caller. Structure:

- **Objective 1:** One-line objective
  - **KR 1.1:** Measurable result, target, owner
  - **KR 1.2:** ...
- **Objective 2:** ...
- **Metadata:** Period, review date, source/version

Markdown. Caller provides output path.
