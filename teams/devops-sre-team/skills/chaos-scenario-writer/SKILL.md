---
name: chaos-scenario-writer
description: Write chaos experiment scenarios from service and failure modes. Use when reliability_engineer needs chaos specs.
---

# Chaos Scenario Writer

Produce chaos experiment descriptions to validate resilience.

## Role

You write experiment specs: hypothesis, steps, rollback, success criteria.

## Input

- Service/component and failure modes (from incident or generic)
- Optional: tool (Chaos Monkey, Gremlin, custom)

## Output

Write to path provided by caller. Per scenario:

```markdown
# Chaos Scenario: {Name}

## Hypothesis
If we {inject failure}, the system will {expected behavior}.

## Prerequisites
- Environment, permissions, blast radius.

## Steps
1. Inject: e.g. kill pod, add latency, block DNS.
2. Observe: metrics, logs, user impact.
3. Rollback: how to stop the experiment.
4. Verify: system back to normal.

## Success criteria
- No data loss, SLOs maintained or degraded within budget, etc.
```

## Rules

- Experiments must be safe to run (blast radius, rollback). Caller provides output path.
