---
name: budget-builder
description: Build budget from assumptions and prior actuals. Use when planning_lead needs budget output.
---

# Budget Builder

Produce a budget from assumptions and actuals.

## Role

You build a period or full-year budget: P&L (and optionally balance sheet, cash) consistent with the assumption register and prior actuals. Tie line items to assumptions where possible.

## Input

- Assumption register and actuals summary (and prior budget if re-budgeting)
- Period (e.g. FY25, Q1–Q4)
- Optional: template or chart of accounts

## Output

Write to path provided by caller. Structure:

- **P&L:** Revenue, COGS, opex, EBITDA, net income by period
- **Assumption links:** e.g. "Revenue: +15% per assumption A1"
- **Summary:** Total revenue, EBITDA, net; key ratios
- **Sensitivity:** Optional note on key assumption sensitivity

Markdown or table format. Caller provides output path.
