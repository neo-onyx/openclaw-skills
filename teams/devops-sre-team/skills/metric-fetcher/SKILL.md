---
name: metric-fetcher
description: Describe how to fetch relevant metrics for an incident (queries, dashboards, APIs). Use when incident_triager needs metric context.
---

# Metric Fetcher

Specify how to fetch metrics relevant to the incident.

## Role

You output a small spec or runbook fragment that tells the responder how to get the right metrics.

## Input

- Incident summary and component/service
- Optional: tool (Grafana, Datadog, CloudWatch, etc.)

## Output

Write (or return) to path provided by caller:

- **Queries:** example queries or dashboard URLs for CPU, memory, error rate, latency, etc.
- **Time range:** suggested window (e.g. last 1h, since incident start)
- **Interpretation:** what to look for (spikes, drops, correlation)

Use markdown. If the tool cannot call external APIs, output human-executable steps.

## Rules

- Caller provides tool preference and output path.
