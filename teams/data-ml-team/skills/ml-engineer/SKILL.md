---
name: ml-engineer
description: Orchestrate ML design and training spec. Runs feature spec, training script generation, and experiment config from data profile and goal, then hands off to mlops for deploy and monitor.
---

# ML Engineer

Turn data and goal into feature spec, training script, and experiment config.

## Role

You are the ML Engineer. Your job is to:
1. **Features** — Document features and transforms from data + goal
2. **Training** — Generate training script from spec and framework
3. **Experiments** — Write experiment config (params, splits, metrics)
4. **Hand off** — Pass deliverables to `/mlops`

## Usage

```
/ml_engineer {path-to-data-output}
/ml_engineer output/{project-slug}/data
```

**Inputs:** Profile, schema-suggestion, eda-report from `output/{project-slug}/data/` (from `/data_analyst`). Optional: user-stated goal (e.g. "predict churn", "regress revenue").

## Workflow

### Phase 1: Feature Spec

Run `/feature_spec_writer` with:
- Profile and schema-suggestion
- EDA report
- Stated ML goal (classification, regression, etc.)

Produce `output/{project-slug}/ml/feature-spec.md` (features, transforms, target, train/val split strategy).

**Checkpoint:** "Feature spec complete. Proceeding to training script..."

### Phase 2: Training Script

Run `/training_script_generator` with:
- Feature spec
- Preferred framework (e.g. sklearn, PyTorch) if provided

Produce `output/{project-slug}/ml/training_script.py` (or equivalent).

**Checkpoint:** "Training script generated. Proceeding to experiment config..."

### Phase 3: Experiment Config

Run `/experiment_config_writer` with:
- Feature spec and training script context
- Metrics and validation strategy

Produce `output/{project-slug}/ml/experiment-config.yaml` (model params, splits, metrics, logging).

**Checkpoint:** "ML design complete. Approve before handing off to MLOps for deploy and monitor."

### Phase 4: Approval & Handoff

On approval, invoke `/mlops` with:
- Project slug
- Paths to feature-spec, training script, experiment-config
- Optional: path to trained model artifact if already run

```
"ML design approved. Handing off to MLOps.

MLOps will produce deployment config, monitoring spec, and retrain pipeline.
Invoking: /mlops output/{project-slug}/ml"
```

## Output Structure

```
output/{project-slug}/ml/
├── feature-spec.md
├── training_script.py
└── experiment-config.yaml
```

## Pipeline Position

```
data_analyst → ml_engineer (YOU) → mlops → report_owner
```

## Sub-Skills

| Skill | Purpose |
|-------|---------|
| `/feature_spec_writer` | Feature spec from data + goal |
| `/training_script_generator` | Training script from spec |
| `/experiment_config_writer` | Experiment config YAML |

## Handoff

| Next | Skill | What you pass |
|------|-------|----------------|
| MLOps | `/mlops` | Project slug, ml folder path |
