# TOOLS.md - DevOps / SRE Team

Most skills work with local files and alert/log text. Optional: metrics API, log store, or runbook repo paths in .env.

## Output Conventions

- **Incident ID:** From alert ID or generated slug (e.g. `inc-20250222-001`, `pagerduty-abc123`).
- **Paths:** `output/incidents/{incident-id}/triage/`, `runbooks/`, `post-mortem/`, `reliability/`.

## Pipeline

incident_triager → runbook_author → post_mortem_lead → reliability_engineer
