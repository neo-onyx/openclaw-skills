---
name: feature-spec-writer
description: Document features and transforms from data profile and ML goal. Use when ml_engineer needs a feature spec for training script and experiment config.
---

# Feature Spec Writer

Produce a feature specification from data and goal.

## Role

You define features, transforms, target, and train/validation strategy for the ML pipeline.

## Input

- Path to profile, schema-suggestion, eda-report
- Stated or inferred ML goal (e.g. classification, regression)

## Output

Write to the path provided by the caller (e.g. `output/{project-slug}/ml/feature-spec.md`) with:

### Structure

```markdown
# Feature Spec: {Project}

## Goal
- Task: classification | regression | clustering | ...
- Target: column and interpretation
- Success criteria: primary metric(s)

## Features
### Input columns
- Column A: type, transform (e.g. standardize, one-hot), notes
- Column B: ...
- (Include derived/engineered features if specified)

### Target
- Column, encoding if needed, handling of missing

## Data splits
- Train/val/test strategy (e.g. 70/15/15, time-based)
- Any stratification or grouping

## Preprocessing
- Imputation, encoding, scaling
- Order of operations

## Constraints and notes
- Leakage risks, class imbalance, small sample
```

## Rules

- Align with schema suggestion and EDA; do not introduce features not supported by the data.
- Caller provides output path.
