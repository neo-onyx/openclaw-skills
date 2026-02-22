# Security Team Template

Build an AI security team for threat research, security architecture, remediation, and compliance reporting. From repo/config scan to fix suggestions and control mapping.

## The Pipeline

```
┌───────────────────┐   ┌─────────────────────┐   ┌───────────────────┐   ┌─────────────────────┐
│ threat_researcher │ → │ security_architect   │ → │ remediation_lead   │ → │ compliance_reporter  │
│ (scan + find)     │   │ (controls + policy) │   │ (fixes + tickets)  │   │ (framework + report) │
└───────────────────┘   └─────────────────────┘   └───────────────────┘   └─────────────────────┘
```

**Start here:** `/threat_researcher {repo path or manifest}` — runs the full pipeline.

---

## What's Included

### Orchestrators

| Skill | What it does | Hands off to |
|-------|--------------|--------------|
| `/threat_researcher` | Scan repo/config for CVEs, deps, secrets, misconfig | → `/security_architect` |
| `/security_architect` | Propose controls and policies | → `/remediation_lead` |
| `/remediation_lead` | Prioritize fixes, suggest patches, create tickets | → `/compliance_reporter` |
| `/compliance_reporter` | Map to framework (e.g. SOC2, ISO), generate report | — |

### Research (used by `/threat_researcher`)

| Skill | What it does |
|-------|--------------|
| `/cve_scanner` | Describe CVE/vuln scan approach; interpret results |
| `/dependency_auditor` | Audit deps (versions, known vulns, licenses) |
| `/secret_detector` | Describe secret scanning; list patterns |
| `/config_linter` | Check config files for security misconfig |

### Architecture (used by `/security_architect`)

| Skill | What it does |
|-------|--------------|
| `/policy_drafter` | Draft security policy from findings |
| `/iam_reviewer` | Review IAM/permissions and suggest least privilege |
| `/architecture_checker` | Check architecture for security gaps |

### Remediation (used by `/remediation_lead`)

| Skill | What it does |
|-------|--------------|
| `/fix_suggester` | Suggest patches or config changes for findings |
| `/ticket_creator` | Turn findings into security tickets (format) |

### Compliance (used by `/compliance_reporter`)

| Skill | What it does |
|-------|--------------|
| `/control_mapper` | Map controls to SOC2, ISO, etc. |
| `/report_generator` | Generate compliance/security report |

---

## Quick Start

```bash
/threat_researcher {repo-path}
/security_architect {findings-path}   # Just architecture
/remediation_lead {findings-path}     # Just remediation
/compliance_reporter {project}        # Just compliance report
```

---

## Outputs

```
output/security/{project}/
├── findings/
│   └── findings-report.md
├── architecture/
│   ├── policy-draft.md
│   └── architecture-notes.md
├── remediation/
│   ├── fix-suggestions.md
│   └── tickets.md
└── compliance/
    ├── control-mapping.md
    └── compliance-report.md
```

---

## File Structure

```
security-team/
├── README.md
├── TOOLS.md
├── .env.example
├── .gitignore
└── skills/
    ├── README.md
    ├── threat-researcher/
    ├── security-architect/
    ├── remediation-lead/
    ├── compliance-reporter/
    ├── cve-scanner/
    ├── dependency-auditor/
    ├── secret-detector/
    ├── config-linter/
    ├── policy-drafter/
    ├── iam-reviewer/
    ├── architecture-checker/
    ├── fix-suggester/
    ├── ticket-creator/
    ├── control-mapper/
    └── report-generator/
```

---

## License

MIT - Use freely, modify as needed.
