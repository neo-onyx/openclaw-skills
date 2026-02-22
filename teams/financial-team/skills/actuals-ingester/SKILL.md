---
name: actuals-ingester
description: Structure actuals (P&L, balance sheet, cash) from provided data. Use when financial_analyst needs actuals summary.
---

# Actuals Ingester

Turn raw financial data into a structured actuals summary.

## Role

You parse or interpret the provided data (CSV, spreadsheet export, or structured summary) and output a consistent actuals summary: P&L lines, balance sheet highlights, cash movement, period and currency.

## Input

- Path to data file or pasted/attached data; optional period label and currency

## Output

Write to path provided by caller. Structure:

- **P&L:** Revenue, COGS, gross margin, opex, EBITDA, net income (or equivalent)
- **Balance sheet:** Key assets/liabilities if provided
- **Cash:** Operating, investing, financing if provided
- **Metadata:** Period, currency, source, data quality notes

Markdown or structured format. Caller provides output path. If data is incomplete, note gaps and assumptions.
