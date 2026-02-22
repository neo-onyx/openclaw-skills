# CEO / Executive Team Template

Build an AI executive office for strategy, board readiness, investor relations, and exec briefings. From OKRs and competitive intel to board decks, investor updates, and weekly/quarterly briefings.

## The Pipeline

```
┌─────────────────┐   ┌──────────────────┐   ┌─────────────────────┐   ┌───────────────────┐
│ strategy_lead   │ → │ board_prep_lead  │ → │ investor_relations │ → │ exec_briefing     │
│ (OKRs + vision) │   │ (board materials)│   │ (investor updates)  │   │ (briefings)       │
└─────────────────┘   └──────────────────┘   └─────────────────────┘   └───────────────────┘
```

**Start here:** `/strategy_lead {period or strategic context}` — runs the full pipeline.

---

## What's Included

### Orchestrators

| Skill | What it does | Hands off to |
|-------|--------------|--------------|
| `/strategy_lead` | OKRs, competitive intel, strategic initiative tracking | → `/board_prep_lead` |
| `/board_prep_lead` | Board deck, narrative, and metrics curation | → `/investor_relations` |
| `/investor_relations` | Investor update, shareholder Q&A prep, earnings prep | → `/exec_briefing` |
| `/exec_briefing` | Weekly/quarterly exec summary, risk radar, priority triage | — |

### Strategy (used by `/strategy_lead`)

| Skill | What it does |
|-------|--------------|
| `/okr_designer` | Design OKRs from strategy and context |
| `/competitive_intel` | Summarize competitive landscape and moves |
| `/strategic_initiative_tracker` | Track initiatives and progress to goals |

### Board (used by `/board_prep_lead`)

| Skill | What it does |
|-------|--------------|
| `/board_deck_builder` | Outline and content for board deck |
| `/board_narrative_writer` | Board narrative and talking points |
| `/board_metrics_curator` | Curate and explain key metrics for board |

### Investor Relations (used by `/investor_relations`)

| Skill | What it does |
|-------|--------------|
| `/investor_update_writer` | Draft investor update (letter or memo) |
| `/shareholder_qa_prep` | Q&A prep for shareholder meetings or calls |
| `/earnings_prep` | Earnings call prep: script outline, Q&A, metrics |

### Exec Briefing (used by `/exec_briefing`)

| Skill | What it does |
|-------|--------------|
| `/exec_summary_writer` | Weekly or quarterly exec summary |
| `/risk_radar` | Risk and opportunity radar (prioritized) |
| `/priority_triage` | Triage and recommend priorities for exec attention |

---

## Quick Start

```bash
/strategy_lead {period-or-context}
/board_prep_lead {period} {strategy-path}     # Just board
/investor_relations {period}                   # Just IR
/exec_briefing {period}                        # Just briefing
```

---

## Outputs

```
output/exec/{period}/
├── strategy/
│   ├── okrs.md
│   ├── competitive-intel.md
│   └── initiative-tracker.md
├── board/
│   ├── deck-outline.md
│   ├── narrative.md
│   └── board-metrics.md
├── investor/
│   ├── investor-update.md
│   ├── shareholder-qa.md
│   └── earnings-prep.md
└── briefing/
    ├── exec-summary.md
    ├── risk-radar.md
    └── priority-triage.md
```

---

## File Structure

```
ceo-executive-team/
├── README.md
├── TOOLS.md
├── .env.example
├── .gitignore
└── skills/
    ├── README.md
    ├── strategy-lead/
    ├── board-prep-lead/
    ├── investor-relations/
    ├── exec-briefing/
    ├── okr-designer/
    ├── competitive-intel/
    ├── strategic-initiative-tracker/
    ├── board-deck-builder/
    ├── board-narrative-writer/
    ├── board-metrics-curator/
    ├── investor-update-writer/
    ├── shareholder-qa-prep/
    ├── earnings-prep/
    ├── exec-summary-writer/
    ├── risk-radar/
    └── priority-triage/
```

---

## License

MIT - Use freely, modify as needed.
