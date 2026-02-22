---
name: training-script-generator
description: Generate a training script from feature spec and optional framework. Use when ml_engineer needs runnable training code.
---

# Training Script Generator

Produce a training script that implements the feature spec.

## Role

You write runnable code that loads data, applies the feature pipeline, trains the model, and evaluates.

## Input

- Path to feature-spec.md
- Optional: framework (e.g. sklearn, PyTorch, XGBoost) and language (default Python)

## Output

Write to the path provided by the caller (e.g. `output/{project-slug}/ml/training_script.py`) with:

### Contents

- **Config / args:** Data path, target, model hyperparameters (or load from config file)
- **Load data:** Read dataset (e.g. CSV); document expected columns
- **Preprocessing:** Match feature spec (transforms, encoding, scaling)
- **Split:** Train/val/test per spec
- **Train:** Fit model(s) per task type
- **Evaluate:** Compute metrics (e.g. accuracy, AUC, RMSE) and optionally log them
- **Save:** Serialize model and optionally metrics (path or format specified by caller)

Use the requested framework; if not specified, default to sklearn for tabular. Add brief comments for each section.

## Rules

- Script must be runnable with minimal edits (paths, env).
- Caller provides output path and framework preference.
