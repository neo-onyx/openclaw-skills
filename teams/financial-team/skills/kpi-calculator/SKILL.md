---
name: kpi-calculator
description: Compute KPIs and ratios from actuals. Use when financial_analyst needs KPI dashboard.
---

# KPI Calculator

Compute key financial KPIs and ratios from actuals.

## Role

You calculate standard metrics: margins (gross, EBITDA, net), growth rates (YoY, QoQ), liquidity (current ratio, quick ratio), efficiency (e.g. DSO, inventory turns), and any custom KPIs the caller specifies.

## Input

- Actuals summary (and optional prior period for growth)
- Optional: list of KPIs to include or exclude

## Output

Write to path provided by caller. Structure:

- **Profitability:** Gross margin %, EBITDA margin %, net margin %
- **Growth:** Revenue growth, segment growth if applicable
- **Liquidity:** Current ratio, quick ratio, cash runway if applicable
- **Efficiency:** DSO, payables, inventory turns if data available
- **Dashboard:** Short table or bullet list for exec view

Markdown. Caller provides output path.
