---
name: variance-analyzer
description: Actual vs budget or prior period variance with drivers. Use when financial_analyst needs variance report.
---

# Variance Analyzer

Produce variance analysis: actual vs budget or actual vs prior period.

## Role

You compare actuals to budget (or prior period), compute variances (absolute and %), and summarize drivers (volume, price, mix, timing, one-off) where possible.

## Input

- Actuals summary and budget or prior-period actuals
- Optional: driver breakdown (e.g. units, price, FX)

## Output

Write to path provided by caller. Structure:

- **Summary:** Overall variance (e.g. revenue, EBITDA) and key messages
- **By line:** Line item, actual, budget/prior, variance, variance %
- **Drivers:** Narrative or table of main drivers (volume, price, etc.)
- **Risks and opportunities:** Notable upside/downside for next period

Markdown. Caller provides output path.
