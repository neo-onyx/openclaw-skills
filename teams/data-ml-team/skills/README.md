# Data / ML Skills Pipeline

From raw data to deployed model and report: explore → train → deploy → report.

## The Pipeline

```
┌──────────────┐   ┌──────────────┐   ┌─────────────┐   ┌───────────────┐
│ data_analyst │ → │ ml_engineer  │ → │ mlops       │ → │ report_owner  │
│ (explore)    │   │ (train)      │   │ (deploy)    │   │ (cards+report)│
└──────────────┘   └──────────────┘   └─────────────┘   └───────────────┘
```

## Quick Start

**Full pipeline:**
```
/data_analyst {dataset path}
```

**Individual stages:**
```
/data_analyst {dataset}        # EDA only
/ml_engineer {profile path}   # ML design only
/mlops {model/spec path}      # Deploy + monitor only
/report_owner {project}       # Model card + report only
```

## Orchestrators vs Sub-Skills

### Orchestrators
| Skill | Purpose |
|-------|---------|
| `/data_analyst` | Profile + EDA → handoff to ml_engineer |
| `/ml_engineer` | Features + training → handoff to mlops |
| `/mlops` | Deploy + monitor + retrain → handoff to report_owner |
| `/report_owner` | Model card + metric report |

### Sub-Skills
| Skill | Purpose | Called By |
|-------|---------|-----------|
| `/data_profiler` | Dataset stats, distributions, types | data_analyst |
| `/schema_suggester` | Schema and key metrics from profile | data_analyst |
| `/eda_reporter` | EDA summary and viz notes | data_analyst |
| `/feature_spec_writer` | Feature spec from data + goal | ml_engineer |
| `/training_script_generator` | Training script from spec | ml_engineer |
| `/experiment_config_writer` | Experiment config YAML | ml_engineer |
| `/deployment_config_writer` | Serving/deploy config | mlops |
| `/monitoring_dashboard_spec` | Metrics and alerts spec | mlops |
| `/retrain_pipeline_spec` | Retrain triggers and pipeline | mlops |
| `/model_card_generator` | Model card | report_owner |
| `/metric_report_writer` | Stakeholder metric report | report_owner |

## Output Structure

```
output/{project-slug}/
├── data/     (data_analyst)
├── ml/       (ml_engineer)
├── mlops/    (mlops)
└── report/   (report_owner)
```
