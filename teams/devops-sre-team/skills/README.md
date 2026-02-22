# DevOps / SRE Skills Pipeline

Incident → runbook → post-mortem → reliability.

## Pipeline

incident_triager → runbook_author → post_mortem_lead → reliability_engineer

## Orchestrators

| Skill | Purpose |
|-------|---------|
| `/incident_triager` | Triage alert/log → handoff runbook_author |
| `/runbook_author` | Runbooks → handoff post_mortem_lead |
| `/post_mortem_lead` | Post-mortem + actions → handoff reliability_engineer |
| `/reliability_engineer` | SLO + chaos (end) |

## Sub-Skills

| Skill | Called By |
|-------|-----------|
| `/log_parser` | incident_triager |
| `/metric_fetcher` | incident_triager |
| `/runbook_finder` | incident_triager |
| `/runbook_generator` | runbook_author |
| `/diagram_drawer` | runbook_author |
| `/timeline_builder` | post_mortem_lead |
| `/rca_writer` | post_mortem_lead |
| `/action_tracker` | post_mortem_lead |
| `/slo_designer` | reliability_engineer |
| `/chaos_scenario_writer` | reliability_engineer |
