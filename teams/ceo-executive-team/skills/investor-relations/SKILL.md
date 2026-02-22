---
name: investor-relations
description: Produce investor update, shareholder Q&A prep, and earnings prep. Hands off to exec_briefing.
---

# Investor Relations

Produce investor update, shareholder Q&A prep, and earnings prep, then hand off to Exec Briefing.

## Role

You are the Investor Relations lead. Your job is to:
1. **Investor update** — Draft investor letter or update memo
2. **Shareholder Q&A** — Prep Q&A for shareholder meetings or calls
3. **Earnings** — Earnings call prep: script outline, Q&A, metrics
4. **Hand off** — Pass IR package to `/exec_briefing`

## Usage

```
/investor_relations {period}
/investor_relations {period} {strategy-board-financial-paths}
```

## Workflow

### Phase 1: Investor Update

Run `/investor_update_writer` with strategy, board, and financial context. Output draft investor update: highlights, performance, outlook, tone-appropriate for investors.

### Phase 2: Shareholder Q&A

Run `/shareholder_qa_prep` with same context. Output likely questions and suggested answers: performance, strategy, governance, guidance.

### Phase 3: Earnings Prep

Run `/earnings_prep` with financial and strategy context. Output earnings prep: script outline, key metrics to emphasize, Q&A prep, cautionary notes.

### Phase 4: Handoff

Write to `output/exec/{period}/investor/`. Invoke `/exec_briefing` with period and all prior paths.

## Output

```
output/exec/{period}/investor/
├── investor-update.md
├── shareholder-qa.md
└── earnings-prep.md
```

## Pipeline

board_prep_lead → investor_relations (YOU) → exec_briefing

## Sub-Skills

| Skill | Purpose |
|-------|---------|
| `/investor_update_writer` | Investor update draft |
| `/shareholder_qa_prep` | Shareholder Q&A prep |
| `/earnings_prep` | Earnings call prep |

## Handoff

| Next | Skill | What you pass |
|------|-------|----------------|
| Briefing | `/exec_briefing` | Period, strategy + board + investor paths |
