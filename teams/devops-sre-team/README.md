# DevOps / SRE Team Template

Build an AI SRE team for incident response, runbooks, post-mortems, and reliability improvements. From alert to blameless post-mortem and SLO/chaos specs.

## The Pipeline

```
┌───────────────────┐   ┌─────────────────┐   ┌───────────────────┐   ┌──────────────────────┐
│ incident_triager  │ → │ runbook_author  │ → │ post_mortem_lead  │ → │ reliability_engineer │
│ (triage + context)│   │ (runbooks)      │   │ (RCA + actions)   │   │ (SLO + chaos)        │
└───────────────────┘   └─────────────────┘   └───────────────────┘   └──────────────────────┘
```

**Start here:** `/incident_triager {alert payload or log snippet}` — runs the full pipeline.

---

## What's Included

### Orchestrators

| Skill | What it does | Hands off to |
|-------|--------------|--------------|
| `/incident_triager` | Ingest alert/logs, classify, pull context | → `/runbook_author` |
| `/runbook_author` | Draft/update runbooks from incidents | → `/post_mortem_lead` |
| `/post_mortem_lead` | Blameless post-mortem, timeline, actions | → `/reliability_engineer` |
| `/reliability_engineer` | SLO design, chaos scenarios, improvements | — |

### Triage (used by `/incident_triager`)

| Skill | What it does |
|-------|--------------|
| `/log_parser` | Parse and structure log snippets |
| `/metric_fetcher` | Describe how to fetch relevant metrics |
| `/runbook_finder` | Find existing runbooks by keyword/component |

### Runbooks (used by `/runbook_author`)

| Skill | What it does |
|-------|--------------|
| `/runbook_generator` | Generate runbook from incident + context |
| `/diagram_drawer` | Describe architecture/flow diagrams (Mermaid or spec) |

### Post-Mortem (used by `/post_mortem_lead`)

| Skill | What it does |
|-------|--------------|
| `/timeline_builder` | Build incident timeline from logs/events |
| `/rca_writer` | Write root cause analysis section |
| `/action_tracker` | Turn findings into actionable tickets |

### Reliability (used by `/reliability_engineer`)

| Skill | What it does |
|-------|--------------|
| `/slo_designer` | Design SLOs/SLIs from service context |
| `/chaos_scenario_writer` | Write chaos experiment scenarios |

---

## Quick Start

```bash
/incident_triager {alert or log}
/runbook_author {incident-summary}    # Just runbooks
/post_mortem_lead {incident-id}       # Just post-mortem
/reliability_engineer {service}       # Just SLO/chaos
```

---

## Outputs

```
output/incidents/{incident-id}/
├── triage/
│   └── triage-report.md
├── runbooks/
│   └── {component}-runbook.md
├── post-mortem/
│   ├── timeline.md
│   ├── post-mortem.md
│   └── actions.md
└── reliability/
    ├── slo-spec.md
    └── chaos-scenarios.md
```

---

## File Structure

```
devops-sre-team/
├── README.md
├── TOOLS.md
├── .env.example
├── .gitignore
└── skills/
    ├── README.md
    ├── incident-triager/
    ├── runbook-author/
    ├── post-mortem-lead/
    ├── reliability-engineer/
    ├── log-parser/
    ├── metric-fetcher/
    ├── runbook-finder/
    ├── runbook-generator/
    ├── diagram-drawer/
    ├── timeline-builder/
    ├── rca-writer/
    ├── action-tracker/
    ├── slo-designer/
    └── chaos-scenario-writer/
```

---

## License

MIT - Use freely, modify as needed.
