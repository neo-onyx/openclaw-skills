# Data / ML Team Template

Build a complete AI data-and-ML team for exploring data, training models, deploying, and reporting. This template includes skills for data analysis, ML engineering, MLOps, and model reporting.

## The Pipeline

```
┌──────────────┐   ┌──────────────┐   ┌─────────────┐   ┌───────────────┐
│ data_analyst │ → │ ml_engineer  │ → │ mlops       │ → │ report_owner  │
│ (explore)    │   │ (train)      │   │ (deploy)    │   │ (cards+report)│
└──────────────┘   └──────────────┘   └─────────────┘   └───────────────┘
```

**Start here:** `/data_analyst {dataset path or description}` — runs the full pipeline.

---

## What's Included

### Orchestrators (entry points)

| Skill | What it does | Hands off to |
|-------|--------------|--------------|
| `/data_analyst` | Profile data, suggest schema and metrics | → `/ml_engineer` |
| `/ml_engineer` | Model choice, features, training pipeline | → `/mlops` |
| `/mlops` | Deploy, monitor, retrain triggers | → `/report_owner` |
| `/report_owner` | Model cards, stakeholder report | — |

### Data (used by `/data_analyst`)

| Skill | What it does |
|-------|--------------|
| `/data_profiler` | Profile dataset: stats, distributions, missing, types |
| `/schema_suggester` | Suggest schema and key metrics from profile |
| `/eda_reporter` | Generate EDA summary and visualisation notes |

### ML (used by `/ml_engineer`)

| Skill | What it does |
|-------|--------------|
| `/feature_spec_writer` | Document features and transforms from data + goal |
| `/training_script_generator` | Generate training script from spec and framework |
| `/experiment_config_writer` | Write experiment config (params, splits, metrics) |

### MLOps (used by `/mlops`)

| Skill | What it does |
|-------|--------------|
| `/deployment_config_writer` | Service config, env, resources for serving |
| `/monitoring_dashboard_spec` | Spec for metrics, alerts, dashboards |
| `/retrain_pipeline_spec` | When and how to retrain (triggers, pipeline) |

### Reporting (used by `/report_owner`)

| Skill | What it does |
|-------|--------------|
| `/model_card_generator` | Generate model card (purpose, metrics, limitations) |
| `/metric_report_writer` | Stakeholder-facing metric summary and narrative |

---

## Quick Start

### The Full Workflow

```bash
# Step 1: Explore data
/data_analyst {path-to-dataset}
# Example: /data_analyst data/training.csv

# After EDA, data_analyst hands off to ml_engineer

# Step 2: ML design (automatic handoff)
# → Feature spec, model choice, training script, experiment config
# → Wait for your approval

# Step 3: MLOps (automatic handoff)
# → Deployment config, monitoring spec, retrain pipeline
# → Ready for infra

# Step 4: Reporting (automatic handoff)
# → Model card, metric report
# → Ready for stakeholders
```

### Running Individual Skills

```bash
/data_analyst {dataset}           # Just EDA and profile
/ml_engineer {profile-path}       # Just ML design and training spec
/mlops {model-artifact-path}      # Just deploy + monitor spec
/data_profiler {path}             # Just profile
/feature_spec_writer {profile}    # Just feature spec
/model_card_generator {model}     # Just model card
```

---

## Setup

### 1. Add Skills to Your Workspace

Copy the `skills/` folder to your Clawdbot workspace:

```bash
cp -r skills/ ~/your-workspace/skills/
```

### 2. Environment (optional)

For training or deployment that call external APIs (e.g. cloud ML), copy `.env.example` to `.env` and add keys. For local-only EDA and spec generation, no keys required.

### 3. Output Folder

Pipeline writes to `output/` under your workspace.

---

## Outputs

```
output/
├── {project-slug}/
│   ├── data/
│   │   ├── profile.json
│   │   ├── schema-suggestion.md
│   │   └── eda-report.md
│   ├── ml/
│   │   ├── feature-spec.md
│   │   ├── training_script.py
│   │   └── experiment-config.yaml
│   ├── mlops/
│   │   ├── deployment-config.yaml
│   │   ├── monitoring-spec.md
│   │   └── retrain-pipeline.md
│   └── report/
│       ├── model-card.md
│       └── metric-report.md
```

---

## Checkpoints & Approvals

1. **After data analysis** — Confirm schema, metrics, and goal
2. **After ML engineer** — Approve features, model, and training plan
3. **After MLOps** — Approve deploy and monitoring
4. **After report owner** — Review model card and metric report

---

## File Structure

```
data-ml-team/
├── README.md
├── TOOLS.md
├── .env.example
├── .gitignore
└── skills/
    ├── README.md
    ├── data-analyst/
    ├── ml-engineer/
    ├── mlops/
    ├── report-owner/
    ├── data-profiler/
    ├── schema-suggester/
    ├── eda-reporter/
    ├── feature-spec-writer/
    ├── training-script-generator/
    ├── experiment-config-writer/
    ├── deployment-config-writer/
    ├── monitoring-dashboard-spec/
    ├── retrain-pipeline-spec/
    ├── model-card-generator/
    └── metric-report-writer/
```

---

## License

MIT - Use freely, modify as needed.
