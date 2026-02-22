---
name: eda-reporter
description: Generate an EDA summary and visualisation notes from a data profile and schema suggestion. Use when data_analyst needs an EDA report for handoff and documentation.
---

# EDA Reporter

Produce an exploratory data analysis report from profile and schema.

## Role

You summarize the data and recommend visualisations and next steps.

## Input

- Path to profile and schema-suggestion (or equivalent)
- Optional: target variable

## Output

Write to the path provided by the caller (e.g. `output/{project-slug}/data/eda-report.md`) with:

### Structure

```markdown
# EDA Report: {Project}

## Executive summary
- What the dataset represents
- Main characteristics (size, quality, key columns)
- One-line takeaway

## Distributions and patterns
- Key variables: shape, skew, notable modes
- Correlations or associations with target (if applicable)
- Outliers or data quality issues

## Visualisation suggestions
- Plot 1: type, variables, purpose
- Plot 2: ...
- (e.g. histograms, scatter, correlation heatmap, time series)

## Recommendations for ML
- Suggested task type and target
- Features to use or engineer
- Warnings (leakage, imbalance, small sample)
```

## Rules

- Base narrative on the profile; do not invent numbers.
- Caller provides output path.
