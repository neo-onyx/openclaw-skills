# TOOLS.md - Code Migration Team

Skills work with repo paths and analysis/plan artifacts. Optional: codemod runner (e.g. jscodeshift) or test runner path in .env.

## Output Conventions

- **Migration ID:** From repo name + goal (e.g. `myapp-v2-api`, `lib-upgrade-2025`). Paths: `output/migrations/{id}/analysis/`, `plan/`, `executed/`, `verification/`.

## Pipeline

codebase_analyst → migration_planner → refactor_executor → verification_lead
