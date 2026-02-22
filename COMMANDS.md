# Slash commands (for Telegram, CLI, or any bot)

These skills are meant to be invoked as **slash commands** (e.g. `/product_analyst`, `/financial_analyst`). Use this list to register them in Telegram, a CLI, or any interface that shows `/command` to the user.

---

## Command list (copy for Telegram or other bots)

| Command | Short description (for menu / help) |
|---------|-------------------------------------|
| `/ads_analyst` | Marketing: competitor ads → campaign → Meta Ads |
| `/product_analyst` | Product: PRD → requirements → design → code → QA |
| `/data_analyst` | Data/ML: dataset → model → MLOps → report |
| `/incident_triager` | DevOps/SRE: incident → runbook → post-mortem → SLO |
| `/threat_researcher` | Security: scan → fix → compliance report |
| `/api_explorer` | Docs: OpenAPI → reference docs → samples |
| `/codebase_analyst` | Migration: analyze → plan → refactor → verify |
| `/financial_analyst` | Finance: actuals → budget → compliance → reporting |
| `/strategy_lead` | CEO/Exec: OKRs → board → IR → briefing |

---

## Telegram Bot API

To show these as Telegram bot commands (menu when user types `/`), call [setMyCommands](https://core.telegram.org/bots/api#setmycommands) with a list of `{ command, description }`. Use the **command without the leading slash** (Telegram adds the `/`).

Example (conceptual; your bot code would call the API):

```json
[
  {"command": "ads_analyst", "description": "Marketing: ads → campaign → Meta"},
  {"command": "product_analyst", "description": "Product: PRD → code → QA"},
  {"command": "data_analyst", "description": "Data/ML: data → model → report"},
  {"command": "incident_triager", "description": "DevOps: incident → post-mortem"},
  {"command": "threat_researcher", "description": "Security: scan → compliance"},
  {"command": "api_explorer", "description": "Docs: OpenAPI → docs → samples"},
  {"command": "codebase_analyst", "description": "Migration: analyze → refactor"},
  {"command": "financial_analyst", "description": "Finance: actuals → reporting"},
  {"command": "strategy_lead", "description": "CEO: OKRs → board → briefing"}
]
```

When a user sends e.g. `/product_analyst`, your bot should pass that to the agent and tell the agent to run the pipeline for that command (see [AGENTS.md](AGENTS.md) and [ENTRY-POINTS.md](ENTRY-POINTS.md)). The agent will then ask for the input (e.g. PRD path or paste) if needed, and run the full pipeline.

---

## Summary

- **Yes, these should show up as / commands** in Telegram (or any chat/CLI) if you want users to trigger pipelines by name.
- **How:** Register the nine commands above with your Telegram bot (or other interface). When the user picks a command, send it to the agent and have the agent resolve it via [ENTRY-POINTS.md](ENTRY-POINTS.md) and run the SKILL workflow per [AGENTS.md](AGENTS.md).
- **Input:** After the user sends e.g. `/financial_analyst`, the bot/agent should ask for the input (e.g. period like Q1-2025, or path to data) and then run the pipeline.
