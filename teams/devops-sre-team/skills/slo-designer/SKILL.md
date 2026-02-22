---
name: slo-designer
description: Design SLOs/SLIs for a service from context and incident. Use when reliability_engineer needs an SLO spec.
---

# SLO Designer

Produce an SLO/SLI specification for the service.

## Role

You define SLIs, SLO targets, error budget, and alerting recommendations.

## Input

- Service/component name and optional post-mortem
- Optional: current metrics or tool (e.g. Grafana SLO)

## Output

Write to path provided by caller. Structure:

```markdown
# SLO Spec: {Service}

## SLIs
- **Availability:** success rate of requests (e.g. 5xx excluded).
- **Latency:** p99 or p95 latency.
- (Others as relevant.)

## SLO Targets
- Availability: 99.9%
- Latency p99: 500ms

## Error budget
- Policy: e.g. 0.1% of requests per month.
- Burn rate alerts: fast/slow burn.

## Alerting
- When to page, when to ticket, when to review.
```

## Rules

- Targets should be measurable and realistic. Caller provides output path.
