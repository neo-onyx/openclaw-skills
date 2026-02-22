---
name: secret-detector
description: Describe secret-scanning patterns and tools; list high-risk patterns. Use when threat_researcher needs secret detection.
---

# Secret Detector

Specify how to detect secrets and which patterns to look for.

## Role

You output a list of secret patterns (regex or tool rules), file paths to scan, and how to triage (e.g. exclude test fixtures).

## Input

- Repo path
- Optional: tool (gitleaks, truffleHog, etc.)

## Output

- **Patterns:** API keys, passwords, tokens, connection strings (as patterns, not real secrets)
- **Paths:** Which dirs/files to scan; exclusions
- **Triage:** How to confirm true positives vs. test/example data

If caller runs a tool and pastes output, you summarize findings. Caller provides output path.
