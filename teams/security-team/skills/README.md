# Security Skills Pipeline

Scan → architecture → remediation → compliance.

## Pipeline

threat_researcher → security_architect → remediation_lead → compliance_reporter

## Orchestrators

| Skill | Purpose |
|-------|---------|
| `/threat_researcher` | Scan → handoff security_architect |
| `/security_architect` | Policy + architecture → handoff remediation_lead |
| `/remediation_lead` | Fixes + tickets → handoff compliance_reporter |
| `/compliance_reporter` | Control mapping + report (end) |

## Sub-Skills

| Skill | Called By |
|-------|-----------|
| `/cve_scanner` | threat_researcher |
| `/dependency_auditor` | threat_researcher |
| `/secret_detector` | threat_researcher |
| `/config_linter` | threat_researcher |
| `/policy_drafter` | security_architect |
| `/iam_reviewer` | security_architect |
| `/architecture_checker` | security_architect |
| `/fix_suggester` | remediation_lead |
| `/ticket_creator` | remediation_lead |
| `/control_mapper` | compliance_reporter |
| `/report_generator` | compliance_reporter |
