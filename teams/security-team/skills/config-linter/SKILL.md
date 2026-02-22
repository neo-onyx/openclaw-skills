---
name: config-linter
description: Check config files for security misconfiguration. Use when threat_researcher needs config security review.
---

# Config Linter

Review config files for security misconfig.

## Role

You check configs (e.g. cloud, k8s, Docker, app) for insecure defaults: open permissions, debug enabled, secrets in plaintext, weak TLS, etc.

## Input

- Repo path or paths to config files (YAML, JSON, env, tf)

## Output

Write to path provided by caller:

- **Per file:** path, finding, severity, recommendation
- **Summary:** count by severity
- **Fix:** suggested change (snippet or description)

Caller provides output path.
