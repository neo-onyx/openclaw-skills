---
name: forecast-updater
description: Update forecast (reforecast) from latest actuals and assumptions. Use when planning_lead needs forecast.
---

# Forecast Updater

Produce an updated forecast from latest actuals and assumptions.

## Role

You reforecast the remainder of the period or year: take actuals to date, apply updated assumptions, and project forward. Highlight changes vs. prior forecast and key drivers.

## Input

- Latest actuals, assumption register, and (optional) prior forecast
- Period and forecast horizon (e.g. rest of FY25)

## Output

Write to path provided by caller. Structure:

- **Actuals to date:** Summary of YTD
- **Forecast:** Revenue, costs, EBITDA, net for remaining periods
- **Full year:** Implied full-year totals
- **Vs prior forecast:** Key changes and reason (assumption change, actuals variance)
- **Risks and opportunities:** Upside/downside to forecast

Markdown. Caller provides output path.
