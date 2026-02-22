---
name: risk-radar
description: Risk and opportunity radar (prioritized). Use when exec_briefing needs risk view.
---

# Risk Radar

Produce a prioritized risk and opportunity radar.

## Role

You list risks and opportunities with: category, description, impact (H/M/L), likelihood or timeframe, owner or mitigation, and status. Sort by priority (e.g. impact × likelihood or exec urgency).

## Input

- Strategy, board, IR, financial, and operational context
- Optional: risk categories (e.g. Market, Operational, Financial, People, Regulatory)
- Optional: opportunity categories

## Output

Write to path provided by caller. Structure:

- **Risks:** | ID | Category | Description | Impact | Likelihood | Owner/Mitigation | Status |
- **Opportunities:** | ID | Category | Description | Impact | Timeframe | Owner | Status |
- **Summary:** Top 3–5 risks, top 2–3 opportunities
- **Trend:** New, unchanged, or improving vs. last period if applicable

Markdown. Caller provides output path.
