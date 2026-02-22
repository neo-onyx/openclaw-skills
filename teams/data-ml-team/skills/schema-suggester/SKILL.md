---
name: schema-suggester
description: Suggest schema and key metrics from a data profile. Use when data_analyst needs schema and KPIs for EDA and handoff to ml_engineer.
---

# Schema Suggester

Suggest data schema and metrics from a profile.

## Role

You interpret the profile and recommend schema (types, keys) and metrics relevant to the stated or inferred goal.

## Input

- Path to profile (e.g. profile.json or profile.md)
- Optional: target variable or goal (e.g. "predict churn", "forecast sales")

## Output

Write to the path provided by the caller (e.g. `output/{project-slug}/data/schema-suggestion.md`) with:

### Structure

```markdown
# Schema Suggestion: {Project}

## Recommended types and roles
| Column | Suggested type | Role | Notes |
|--------|----------------|------|-------|
| ...    | ...            | feature | target | id | metadata |

## Key metrics to track
- [Metric 1]: definition, why it matters
- [Metric 2]: ...

## Data quality notes
- Issues to fix or monitor
- Recommended transforms (e.g. imputation, encoding)

## Inferred or suggested goal
- Task type (e.g. binary classification, regression)
- Target variable and interpretation
```

## Rules

- Align types with profile (e.g. don't suggest numeric for high-cardinality string).
- If no target is given, suggest one or list candidates and ask the user to confirm.
- Caller provides output path.
