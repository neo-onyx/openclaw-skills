---
name: experiment-config-writer
description: Write experiment config (params, splits, metrics) from feature spec and training context. Use when ml_engineer needs a single config for runs and logging.
---

# Experiment Config Writer

Produce an experiment configuration file for training and logging.

## Role

You define a single config that drives training and experiment tracking.

## Input

- Path to feature-spec and (optionally) training script
- Optional: experiment tracker (e.g. MLflow, W&B) or "none"

## Output

Write to the path provided by the caller (e.g. `output/{project-slug}/ml/experiment-config.yaml`) with:

### Structure (YAML)

```yaml
# Experiment config: {project}

data:
  path: ...           # or env var
  target: ...
  split:
    train_ratio: 0.7
    val_ratio: 0.15
    test_ratio: 0.15
    stratify: ...     # if applicable

model:
  type: ...           # e.g. LogisticRegression, XGBClassifier
  params: {...}       # hyperparameters

metrics:
  primary: ...        # e.g. accuracy, auc, rmse
  secondary: [...]

logging:
  experiment_name: ...
  # tracker-specific fields if applicable
```

## Rules

- Params and metrics must align with feature spec and training script.
- Caller provides output path and tracker preference.
