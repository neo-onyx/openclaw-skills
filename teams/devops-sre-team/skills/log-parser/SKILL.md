---
name: log-parser
description: Parse and structure alert or log snippet into events with timestamps, source, and message. Use when incident_triager needs structured input.
---

# Log Parser

Turn raw alert or log text into structured events.

## Role

You parse the input and output a consistent structure for triage.

## Input

- Alert payload or log snippet (paste or path)

## Output

Structured output (to path or stdout as specified by caller):

- **Events:** list of { timestamp, source, level?, message, raw? }
- **Summary:** line count, time range, notable patterns (errors, exceptions)
- **Format:** JSON or markdown table; caller specifies

## Rules

- Preserve original timestamps; normalize to one timezone if needed and note it.
- Do not drop lines; attach raw line to event if useful.
- Caller provides output path/format.
