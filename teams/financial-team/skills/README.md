# Financial Skills Pipeline

Actuals + variance → planning → compliance → reporting.

## Pipeline

financial_analyst → planning_lead → compliance_controller → report_steward

## Orchestrators

| Skill | Purpose |
|-------|---------|
| `/financial_analyst` | Actuals + variance + KPIs → handoff planning_lead |
| `/planning_lead` | Budget + forecast → handoff compliance_controller |
| `/compliance_controller` | Policy + control + audit prep → handoff report_steward |
| `/report_steward` | Mgmt pack + board + external (end) |

## Sub-Skills

| Skill | Called By |
|-------|-----------|
| `/actuals_ingester` | financial_analyst |
| `/variance_analyzer` | financial_analyst |
| `/kpi_calculator` | financial_analyst |
| `/assumption_registry` | planning_lead |
| `/budget_builder` | planning_lead |
| `/forecast_updater` | planning_lead |
| `/policy_checker` | compliance_controller |
| `/control_mapper` | compliance_controller |
| `/audit_prep` | compliance_controller |
| `/management_report_writer` | report_steward |
| `/board_financial_pack` | report_steward |
| `/external_report_drafter` | report_steward |
