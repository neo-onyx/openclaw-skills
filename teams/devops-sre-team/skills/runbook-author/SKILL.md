---
name: runbook-author
description: Orchestrate runbook creation from incident context. Generates or updates runbooks, adds diagrams, then hands off to post_mortem_lead.
---

# Runbook Author

Draft or update runbooks from incident context, then hand off to Post-Mortem Lead.

## Role

You are the Runbook Author. Your job is to:
1. **Generate** — Create or update runbook from triage + incident summary
2. **Diagrams** — Add architecture/flow diagram spec (e.g. Mermaid)
3. **Hand off** — Pass runbook and incident context to `/post_mortem_lead`

## Usage

```
/runbook_author {incident-id}
/runbook_author {incident-id} {triage-report-path}
```

## Workflow

### Phase 1: Runbook

Run `/runbook_generator` with triage report and incident summary. Produce runbook: steps, checks, rollback, escalation.

**Checkpoint:** "Runbook draft complete. Adding diagram spec..."

### Phase 2: Diagram

Run `/diagram_drawer` with component and flow description. Output Mermaid or diagram spec for the runbook.

**Checkpoint:** "Runbook package complete. Handing off to Post-Mortem Lead."

### Phase 3: Handoff

Write to `output/incidents/{incident-id}/runbooks/`. Invoke `/post_mortem_lead` with incident-id and paths to triage + runbook.

## Output

```
output/incidents/{incident-id}/runbooks/
└── {component}-runbook.md
```

## Pipeline

incident_triager → runbook_author (YOU) → post_mortem_lead → reliability_engineer

## Sub-Skills

| Skill | Purpose |
|-------|---------|
| `/runbook_generator` | Runbook from incident + context |
| `/diagram_drawer` | Diagram spec (Mermaid) for runbook |

## Handoff

| Next | Skill | What you pass |
|------|-------|----------------|
| Post-mortem | `/post_mortem_lead` | Incident ID, triage + runbook paths |
