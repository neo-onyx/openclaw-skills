---
name: model-card-generator
description: Generate a model card from feature spec, metrics, and context. Use when report_owner needs a model card for documentation and compliance.
---

# Model Card Generator

Produce a model card for documentation and transparency.

## Role

You write a model card that describes purpose, data, metrics, and limitations.

## Input

- Path to feature spec, experiment config
- Optional: validation/test metrics (e.g. accuracy, AUC, RMSE)
- Optional: intended use and stakeholder notes

## Output

Write to the path provided by the caller (e.g. `output/{project-slug}/report/model-card.md`) with:

### Structure

```markdown
# Model Card: {Project}

## Overview
- Purpose: what the model does and for whom
- Task: classification | regression | ...
- Version and date

## Data
- Training data: source, time range, size
- Features: summary (see feature spec for detail)
- Target: definition and encoding
- Known limitations or biases in the data

## Performance
- Metrics: primary and secondary (with values if provided)
- Evaluation methodology: split, stratification
- Where it works well / where it does not

## Intended use
- Appropriate use cases
- Out-of-scope or inappropriate uses

## Limitations and risks
- Known failure modes
- Ethical considerations, fairness notes
- Recommendations for monitoring and retraining
```

## Rules

- Do not overstate performance; note uncertainty if metrics are missing.
- Caller provides output path and any metric values.
