---
name: management-report-writer
description: Write management reporting pack (narrative + tables). Use when report_steward needs management pack.
---

# Management Report Writer

Produce the internal management reporting pack.

## Role

You write a concise narrative and supporting tables: period performance, variance to budget/prior, key drivers, and outlook. Audience: internal management (CFO, COO, department heads).

## Input

- Analysis (actuals, variance, KPIs), planning (budget, forecast), and compliance summary
- Optional: prior period pack for format consistency

## Output

Write to path provided by caller. Structure:

- **Executive summary:** 3–5 bullet highlights
- **Revenue:** Performance, variance, drivers
- **Costs and margin:** Opex, EBITDA, key moves
- **Cash:** Cash flow summary, runway or liquidity
- **Outlook:** Forecast summary, risks, opportunities
- **Appendix:** Key tables (P&L, variance, KPIs)

Markdown. Caller provides output path.
