---
name: board-financial-pack
description: Produce board-ready financial summary and charts. Use when report_steward needs board pack.
---

# Board Financial Pack

Produce the board-ready financial summary.

## Role

You create a one- to two-page board view: key numbers, trend charts (revenue, margin, cash), and brief narrative. No raw data dumps; board-level clarity and focus on strategy and risk.

## Input

- Analysis, planning, and compliance outputs
- Optional: prior board pack for format

## Output

Write to path provided by caller. Structure:

- **Headline metrics:** Revenue, EBITDA (or equivalent), cash; YoY or vs plan
- **Chart suggestions:** What to chart (e.g. "Revenue trend", "Margin trend", "Cash runway") with short description for chart builder
- **Narrative:** 2–3 paragraphs: performance, key drivers, outlook and risks
- **Approval/attention:** Any items for board decision or awareness

Markdown. Caller provides output path.
