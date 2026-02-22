---
name: retrain-pipeline-spec
description: Specify when and how to retrain the model. Use when mlops needs a retrain strategy.
---

# Retrain Pipeline Spec

Produce a specification for retraining and rollout.

## Role

You define triggers, pipeline steps, and validation for retraining.

## Input

- Path to training script, data source description, and experiment config
- Optional: current deployment and monitoring context

## Output

Write to the path provided by the caller (e.g. `output/{project-slug}/mlops/retrain-pipeline.md`) with:

### Structure

```markdown
# Retrain Pipeline: {Project}

## Triggers
- Schedule: e.g. weekly, monthly
- Conditional: e.g. when drift > X, when accuracy drops below Y
- Manual: on-demand

## Pipeline steps
1. Data pull: source, date range, validation
2. Preprocessing: same as feature spec
3. Training: command, config, artifact output
4. Evaluation: metrics, gate (e.g. must beat current model)
5. Rollout: canary, A/B, or full replace
6. Rollback: condition and procedure

## Validation and gates
- Minimum performance to promote
- Data quality checks before training
- Post-deploy checks
```

## Rules

- Pipeline must be executable from the training script and config.
- Caller provides output path.
