# Financial Team Template

Build an AI finance team for analysis, planning, control, and reporting. From actuals and assumptions to budgets, forecasts, compliance checks, and management/board reports.

## The Pipeline

```
┌─────────────────────┐   ┌──────────────────┐   ┌─────────────────────┐   ┌───────────────────┐
│ financial_analyst   │ → │ planning_lead     │ → │ compliance_controller│ → │ report_steward     │
│ (actuals + variance)│   │ (budget+forecast)│   │ (policies + audit)  │   │ (mgmt + external) │
└─────────────────────┘   └──────────────────┘   └─────────────────────┘   └───────────────────┘
```

**Start here:** `/financial_analyst {data path or period}` — runs the full pipeline.

---

## What's Included

### Orchestrators

| Skill | What it does | Hands off to |
|-------|--------------|--------------|
| `/financial_analyst` | Ingest actuals, variance analysis, key metrics | → `/planning_lead` |
| `/planning_lead` | Budget and forecast from assumptions | → `/compliance_controller` |
| `/compliance_controller` | Policy checks, control mapping, audit prep | → `/report_steward` |
| `/report_steward` | Management packs, board financials, external reports | — |

### Analysis (used by `/financial_analyst`)

| Skill | What it does |
|-------|--------------|
| `/actuals_ingester` | Structure actuals (P&L, balance sheet, cash) from data |
| `/variance_analyzer` | Actual vs budget/prior period variance with drivers |
| `/kpi_calculator` | Compute KPIs and ratios from actuals |

### Planning (used by `/planning_lead`)

| Skill | What it does |
|-------|--------------|
| `/assumption_registry` | Document and version assumptions for plan |
| `/budget_builder` | Build budget from assumptions and prior actuals |
| `/forecast_updater` | Update forecast (reforecast) from latest actuals |

### Compliance (used by `/compliance_controller`)

| Skill | What it does |
|-------|--------------|
| `/policy_checker` | Check transactions/positions against policies |
| `/control_mapper` | Map controls to framework (SOX, internal) |
| `/audit_prep` | Prepare audit evidence and workpapers outline |

### Reporting (used by `/report_steward`)

| Skill | What it does |
|-------|--------------|
| `/management_report_writer` | Management reporting pack (narrative + tables) |
| `/board_financial_pack` | Board-ready financial summary and charts |
| `/external_report_drafter` | Draft statutory or external report sections |

---

## Quick Start

```bash
/financial_analyst {data-path-or-period}
/planning_lead {period} {actuals-path}        # Just planning
/compliance_controller {period} {plan-path}  # Just compliance
/report_steward {period}                      # Just reporting
```

---

## Outputs

```
output/finance/{period}/
├── analysis/
│   ├── actuals-summary.md
│   ├── variance-report.md
│   └── kpi-dashboard.md
├── planning/
│   ├── assumptions.md
│   ├── budget.md
│   └── forecast.md
├── compliance/
│   ├── policy-check.md
│   ├── control-mapping.md
│   └── audit-prep.md
└── reporting/
    ├── management-pack.md
    ├── board-financials.md
    └── external-draft.md
```

---

## File Structure

```
financial-team/
├── README.md
├── TOOLS.md
├── .env.example
├── .gitignore
└── skills/
    ├── README.md
    ├── financial-analyst/
    ├── planning-lead/
    ├── compliance-controller/
    ├── report-steward/
    ├── actuals-ingester/
    ├── variance-analyzer/
    ├── kpi-calculator/
    ├── assumption-registry/
    ├── budget-builder/
    ├── forecast-updater/
    ├── policy-checker/
    ├── control-mapper/
    ├── audit-prep/
    ├── management-report-writer/
    ├── board-financial-pack/
    └── external-report-drafter/
```

---

## License

MIT - Use freely, modify as needed.
