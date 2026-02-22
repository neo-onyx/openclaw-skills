---
name: metric-report-writer
description: Write a stakeholder-facing metric report from model card and context. Use when report_owner needs an executive summary and narrative.
---

# Metric Report Writer

Produce a stakeholder-facing report on model performance and impact.

## Role

You write a short, clear report that non-technical stakeholders can use.

## Input

- Path to model card and key metrics
- Optional: business goal, success criteria, deployment/monitoring notes from mlops

## Output

Write to the path provided by the caller (e.g. `output/{project-slug}/report/metric-report.md`) with:

### Structure

```markdown
# Metric Report: {Project}

## Executive summary
- What was built and why
- Key result in one sentence (e.g. "Model achieves X% accuracy on Y")
- Recommendation: ship, iterate, or pause

## Results
- Primary metric(s) with numbers
- Comparison to baseline or target if applicable
- Confidence or caveats

## What this enables
- Business impact (e.g. better targeting, fewer false positives)
- Next steps (e.g. A/B test, roll out to more users)

## Appendix
- Link or reference to model card and technical details
- How to monitor and when to retrain
```

## Rules

- Use plain language; avoid jargon or define it.
- Caller provides output path and any business context.
