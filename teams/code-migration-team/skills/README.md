# Code Migration Skills Pipeline

Analyze → plan → execute → verify.

## Pipeline

codebase_analyst → migration_planner → refactor_executor → verification_lead

## Orchestrators

| Skill | Purpose |
|-------|---------|
| `/codebase_analyst` | Analyze → handoff migration_planner |
| `/migration_planner` | Plan + risk → handoff refactor_executor |
| `/refactor_executor` | Run transforms → handoff verification_lead |
| `/verification_lead` | Test + diff + rollback (end) |

## Sub-Skills

| Skill | Called By |
|-------|-----------|
| `/dependency_mapper` | codebase_analyst |
| `/pattern_detector` | codebase_analyst |
| `/tech_debt_linter` | codebase_analyst |
| `/phase_planner` | migration_planner |
| `/risk_report` | migration_planner |
| `/file_level_plan` | migration_planner |
| `/codemod_scripts` | refactor_executor |
| `/test_generator` | refactor_executor |
| `/test_runner` | verification_lead |
| `/diff_summarizer` | verification_lead |
| `/rollback_checklist` | verification_lead |
