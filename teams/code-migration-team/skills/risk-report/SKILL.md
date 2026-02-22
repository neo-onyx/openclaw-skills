---
name: risk-report
description: Produce risk report and mitigation per migration phase. Use when migration_planner needs risk analysis.
---

# Risk Report

Produce risks and mitigations for the migration.

## Role

You list risks per phase (e.g. breaking changes, test gaps, rollout complexity) and suggest mitigations (e.g. feature flags, incremental rollout, extra tests).

## Input

- Phase plan and analysis (dependency map, patterns, tech debt)

## Output

Write to path provided by caller. Format:

- **Per phase:** phase name, risks (description, likelihood, impact), mitigations, residual risk
- **Overall:** cross-phase risks (e.g. long branch, merge conflicts)
- **Rollback:** when to roll back and what to prepare

Markdown. Caller provides output path.
