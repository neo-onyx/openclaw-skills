---
name: mlops
description: Orchestrate deploy, monitor, and retrain. Produces deployment config, monitoring dashboard spec, and retrain pipeline from ML artifacts, then hands off to report_owner for model card and metric report.
---

# MLOps

Define how the model is deployed, monitored, and retrained.

## Role

You are the MLOps lead. Your job is to:
1. **Deploy** — Produce deployment/service config for serving
2. **Monitor** — Specify metrics, alerts, and dashboard
3. **Retrain** — Specify when and how to retrain
4. **Hand off** — Pass deliverables to `/report_owner`

## Usage

```
/mlops {path-to-ml-output}
/mlops output/{project-slug}/ml
```

**Inputs:** Feature spec, training script, experiment-config from `/ml_engineer`; optional model artifact path if training has been run.

## Workflow

### Phase 1: Deployment Config

Run `/deployment_config_writer` with:
- Feature spec and experiment config
- Target environment (e.g. local, cloud function, container)

Produce `output/{project-slug}/mlops/deployment-config.yaml` (or equivalent: service definition, env, resources).

**Checkpoint:** "Deployment config complete. Proceeding to monitoring..."

### Phase 2: Monitoring Spec

Run `/monitoring_dashboard_spec` with:
- Model task (classification, regression, etc.)
- Key metrics from experiment config
- SLA or target performance if provided

Produce `output/{project-slug}/mlops/monitoring-spec.md` (metrics to track, alerts, dashboard layout notes).

**Checkpoint:** "Monitoring spec complete. Proceeding to retrain pipeline..."

### Phase 3: Retrain Pipeline

Run `/retrain_pipeline_spec` with:
- Training script and data source
- Triggers (schedule, drift, performance drop)
- Validation and rollout steps

Produce `output/{project-slug}/mlops/retrain-pipeline.md`.

**Checkpoint:** "MLOps package complete. Handing off to Report Owner for model card and metric report."

### Phase 4: Handoff to Report Owner

Invoke `/report_owner` with:
- Project slug
- Paths to data, ml, and mlops outputs
- Optional: path to model artifact and validation metrics

```
"MLOps complete. Handing off to Report Owner for model card and stakeholder report.
Invoking: /report_owner output/{project-slug}"
```

## Output Structure

```
output/{project-slug}/mlops/
├── deployment-config.yaml
├── monitoring-spec.md
└── retrain-pipeline.md
```

## Pipeline Position

```
ml_engineer → mlops (YOU) → report_owner
```

## Sub-Skills

| Skill | Purpose |
|-------|---------|
| `/deployment_config_writer` | Serving/deploy config |
| `/monitoring_dashboard_spec` | Metrics, alerts, dashboard |
| `/retrain_pipeline_spec` | Retrain triggers and pipeline |

## Handoff

| Next | Skill | What you pass |
|------|-------|----------------|
| Reporting | `/report_owner` | Project slug, paths to data/ml/mlops (and optional model/metrics) |
