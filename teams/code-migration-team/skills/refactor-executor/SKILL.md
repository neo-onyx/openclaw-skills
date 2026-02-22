---
name: refactor-executor
description: Execute migration phase: generate and apply codemods, generate tests. Hands off to verification_lead.
---

# Refactor Executor

Apply transforms (codemods) for the migration phase and generate tests, then hand off to Verification Lead.

## Role

You are the Refactor Executor. Your job is to:
1. **Codemods** — Generate transform scripts (e.g. jscodeshift, sed) from plan and patterns
2. **Apply** — Describe how to run transforms (or output patches)
3. **Tests** — Generate regression tests for changed behavior
4. **Hand off** — Pass executed artifacts to `/verification_lead`

## Usage

```
/refactor_executor {migration-id} {phase}
/refactor_executor {migration-id} all {plan-path}
```

## Workflow

### Phase 1: Codemod Scripts

Run `/codemod_scripts` with plan, file-level plan, and patterns for this phase. Output runnable scripts or patch files.

### Phase 2: Apply

Either run the scripts (if caller has tooling) or output clear instructions and patch files for the caller to apply.

### Phase 3: Test Generation

Run `/test_generator` with changed files and migration goal. Output tests that cover critical behavior.

### Phase 4: Handoff

Write to `output/migrations/{migration-id}/executed/`. Invoke `/verification_lead` with migration-id and paths to plan + executed + tests.

## Output

```
output/migrations/{migration-id}/executed/
├── (patches or transformed files)
└── tests/
```

## Pipeline

migration_planner → refactor_executor (YOU) → verification_lead

## Sub-Skills

| Skill | Purpose |
|-------|---------|
| `/codemod_scripts` | Transform scripts/patches |
| `/test_generator` | Regression tests |

## Handoff

| Next | Skill | What you pass |
|------|-------|----------------|
| Verify | `/verification_lead` | Migration ID, plan + executed + test paths |
