---
name: strategy-lead
description: Orchestrate strategy: OKRs, competitive intel, initiative tracking. Entry point for the CEO/Executive pipeline; hands off to board_prep_lead.
---

# Strategy Lead

Set OKRs, capture competitive intel, and track strategic initiatives, then hand off to Board Prep Lead.

## Role

You are the Strategy Lead. Your job is to:
1. **OKRs** — Design or refresh OKRs from strategy and context
2. **Competitive intel** — Summarize competitive landscape and key moves
3. **Initiatives** — Track strategic initiatives and progress to goals
4. **Hand off** — Pass strategy package to `/board_prep_lead`

## Usage

```
/strategy_lead {period-or-context}
/strategy_lead Q1-2025
/strategy_lead (with strategy doc or prior OKRs)
```

## Workflow

### Phase 1: OKRs

Run `/okr_designer` with period and strategic context (vision, prior OKRs, constraints). Output OKRs: objectives, key results, owners, targets.

**Checkpoint:** "OKRs drafted. Gathering competitive intel..."

### Phase 2: Competitive Intel

Run `/competitive_intel` with period and market/competitor context. Output summary: competitors, moves, threats, opportunities.

**Checkpoint:** "Competitive intel complete. Tracking initiatives..."

### Phase 3: Initiative Tracker

Run `/strategic_initiative_tracker` with OKRs and initiative list (or from context). Output initiative status: goal, owner, status, blockers, next steps.

**Checkpoint:** "Strategy package complete. Handing off to Board Prep Lead."

### Phase 4: Handoff

Write to `output/exec/{period}/strategy/`. Invoke `/board_prep_lead` with period and strategy paths.

## Output

```
output/exec/{period}/strategy/
├── okrs.md
├── competitive-intel.md
└── initiative-tracker.md
```

## Pipeline

strategy_lead (YOU) → board_prep_lead → investor_relations → exec_briefing

## Sub-Skills

| Skill | Purpose |
|-------|---------|
| `/okr_designer` | Design OKRs |
| `/competitive_intel` | Competitive landscape summary |
| `/strategic_initiative_tracker` | Initiative tracking |

## Handoff

| Next | Skill | What you pass |
|------|-------|----------------|
| Board | `/board_prep_lead` | Period, strategy paths |
