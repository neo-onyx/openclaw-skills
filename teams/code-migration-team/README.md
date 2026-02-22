# Code Migration / Modernisation Team Template

Build an AI team for analyzing codebases, planning migrations, executing refactors, and verification. From repo scan to phased plan, transforms, and test/rollback checklist.

## The Pipeline

```
┌─────────────────────┐   ┌───────────────────┐   ┌───────────────────┐   ┌─────────────────────┐
│ codebase_analyst    │ → │ migration_planner │ → │ refactor_executor  │ → │ verification_lead   │
│ (analyze deps+code) │   │ (plan + risk)     │   │ (transforms)       │   │ (test + rollback)   │
└─────────────────────┘   └───────────────────┘   └───────────────────┘   └─────────────────────┘
```

**Start here:** `/codebase_analyst {repo path}` — runs the full pipeline.

---

## What's Included

### Orchestrators

| Skill | What it does | Hands off to |
|-------|--------------|--------------|
| `/codebase_analyst` | Map deps, patterns, tech debt | → `/migration_planner` |
| `/migration_planner` | Phased plan, risk, file-level tasks | → `/refactor_executor` |
| `/refactor_executor` | Apply transforms (codemods, renames) | → `/verification_lead` |
| `/verification_lead` | Test plan, diff review, rollback checklist | — |

### Analysis (used by `/codebase_analyst`)

| Skill | What it does |
|-------|--------------|
| `/dependency_mapper` | Map dependencies and versions |
| `/pattern_detector` | Detect patterns to migrate (e.g. old API usage) |
| `/tech_debt_linter` | List tech debt and migration candidates |

### Planning (used by `/migration_planner`)

| Skill | What it does |
|-------|--------------|
| `/phase_planner` | Break migration into ordered phases |
| `/risk_report` | Risks and mitigation per phase |
| `/file_level_plan` | File-level task list per phase |

### Execution (used by `/refactor_executor`)

| Skill | What it does |
|-------|--------------|
| `/codemod_scripts` | Generate transform scripts (e.g. jscodeshift, sed) |
| `/test_generator` | Generate tests for regressions |

### Verification (used by `/verification_lead`)

| Skill | What it does |
|-------|--------------|
| `/test_runner` | Describe how to run tests and interpret results |
| `/diff_summarizer` | Summarize code diff for review |
| `/rollback_checklist` | Rollback and revert steps |

---

## Quick Start

```bash
/codebase_analyst {repo-path}
/migration_planner {repo} {analysis-path}   # Just plan
/refactor_executor {phase} {plan-path}      # Just execute one phase
/verification_lead {migration-id}           # Just verification
```

---

## Outputs

```
output/migrations/{migration-id}/
├── analysis/
│   ├── dependency-map.md
│   ├── patterns.md
│   └── tech-debt.md
├── plan/
│   ├── phases.md
│   ├── risk-report.md
│   └── file-level-plan.md
├── executed/
│   └── (transformed code or patches)
└── verification/
    ├── test-plan.md
    ├── diff-summary.md
    └── rollback-checklist.md
```

---

## File Structure

```
code-migration-team/
├── README.md
├── TOOLS.md
├── .env.example
├── .gitignore
└── skills/
    ├── README.md
    ├── codebase-analyst/
    ├── migration-planner/
    ├── refactor-executor/
    ├── verification-lead/
    ├── dependency-mapper/
    ├── pattern-detector/
    ├── tech-debt-linter/
    ├── phase-planner/
    ├── risk-report/
    ├── file-level-plan/
    ├── codemod-scripts/
    ├── test-generator/
    ├── test-runner/
    ├── diff-summarizer/
    └── rollback-checklist/
```

---

## License

MIT - Use freely, modify as needed.
