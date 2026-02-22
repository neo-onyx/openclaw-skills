# TOOLS.md - Financial Team

Skills work with local data paths (CSV, spreadsheets, or structured exports). No API keys required for core workflow. Optional: ERP/GL export paths or report templates in .env.

## Output Conventions

- **Period:** e.g. FY25, Q1-2025, Jan-2025. Paths: `output/finance/{period}/analysis/`, `planning/`, `compliance/`, `reporting/`.
- **Data:** Actuals and budgets in consistent structure (P&L lines, balance sheet, cash); caller provides or skills describe expected format.

## Pipeline

financial_analyst → planning_lead → compliance_controller → report_steward
