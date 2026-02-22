---
name: monitoring-dashboard-spec
description: Specify metrics, alerts, and dashboard layout for model serving. Use when mlops needs a monitoring spec.
---

# Monitoring Dashboard Spec

Produce a specification for monitoring the deployed model.

## Role

You define what to measure, when to alert, and how to lay out a dashboard.

## Input

- Model task (classification, regression, etc.) and key metrics from experiment config
- Optional: SLA or target performance (e.g. accuracy > 0.9, latency p99 < 200ms)

## Output

Write to the path provided by the caller (e.g. `output/{project-slug}/mlops/monitoring-spec.md`) with:

### Structure

```markdown
# Monitoring Spec: {Project}

## Metrics to track
### Model performance
- [Metric 1]: definition, target, frequency
- [Metric 2]: ...

### Serving and data
- Request count, latency (p50, p95, p99)
- Input distribution (e.g. feature drift)
- Error rate and failure modes

## Alerts
- Alert 1: condition, severity, action
- Alert 2: ...

## Dashboard layout
- Section 1: panels (e.g. accuracy over time, latency histogram)
- Section 2: ...
- Section 3: data quality / drift
```

## Rules

- Metrics must be measurable from the serving layer or logs.
- Caller provides output path.
