---
name: assumption-registry
description: Document and version assumptions for planning. Use when planning_lead needs assumption register.
---

# Assumption Registry

Produce a documented assumption register for the plan.

## Role

You list and describe assumptions: revenue (volume, price, mix), costs (headcount, rates, inflation), one-time items, FX, and other material assumptions. Include source, date, and version so plans are auditable.

## Input

- Period and analysis (actuals, variance); optional prior assumptions file to update

## Output

Write to path provided by caller. Structure:

- **Revenue assumptions:** Growth, pricing, mix, new products/geos
- **Cost assumptions:** Headcount, salaries, opex, inflation
- **One-time / below the line:** Restructuring, legal, other
- **FX / other:** Currency, tax rate, etc.
- **Version:** Date, author or source, change log if updated

Markdown. Caller provides output path.
