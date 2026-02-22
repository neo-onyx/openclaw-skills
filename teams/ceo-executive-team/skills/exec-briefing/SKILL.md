---
name: exec-briefing
description: Produce exec summary, risk radar, and priority triage. Final stage of the CEO/Executive pipeline.
---

# Exec Briefing

Produce weekly or quarterly exec summary, risk radar, and priority triage.

## Role

You are the Exec Briefing lead. Your job is to:
1. **Summary** — Weekly or quarterly exec summary (one-pager or short deck)
2. **Risk radar** — Prioritized risks and opportunities
3. **Priority triage** — What needs exec attention and in what order
4. **Done** — No further handoff

## Usage

```
/exec_briefing {period}
/exec_briefing {period} {all-prior-paths}
```

## Workflow

### Phase 1: Exec Summary

Run `/exec_summary_writer` with strategy, board, IR, and operational context. Output one-page (or short) exec summary: headlines, metrics, wins, concerns, next period focus.

### Phase 2: Risk Radar

Run `/risk_radar` with same context. Output risk and opportunity radar: list by category, impact, likelihood, owner or mitigation.

### Phase 3: Priority Triage

Run `/priority_triage` with same context. Output triage: items needing exec attention, recommended order, suggested action (decide, delegate, defer).

### Phase 4: Summary

Write to `output/exec/{period}/briefing/`. Present to user.

## Output

```
output/exec/{period}/briefing/
├── exec-summary.md
├── risk-radar.md
└── priority-triage.md
```

## Pipeline

investor_relations → exec_briefing (YOU) — end of pipeline

## Sub-Skills

| Skill | Purpose |
|-------|---------|
| `/exec_summary_writer` | Exec summary |
| `/risk_radar` | Risk and opportunity radar |
| `/priority_triage` | Priority triage for exec |

## Handoff

None. Final stage.
