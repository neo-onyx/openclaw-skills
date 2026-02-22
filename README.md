<div align="center">

# OpenClaw Skills

**Nine expert teams inside your agent.** One slash command → full pipeline.

*PRD → code. Incident → post-mortem. Data → model card. Budget → report. No plugins. No API keys. Just point your agent here.*

[Tell your agent ↓](#-tell-your-agent) · [Quick Start](#-quick-start) · [Teams](#-teams) · [Docs](#-docs)

</div>

---

## ✨ Tell your agent

**Copy the block below. Paste it into Cursor, Clawdbot, or OpenClaw. Your agent gets nine pipelines and will offer to run one.**

```
Read START_HERE.md then AGENTS.md in this repo. You now have nine team pipelines (Marketing, Product, Data/ML, DevOps, Security, Docs, Code Migration, Financial, CEO/Executive). List them and offer to run one. When I say which pipeline and give you the input, use ENTRY-POINTS.md to open the right SKILL and run it start to finish per AGENTS.md.
```

**That’s it.** The agent bootstraps, shows you what it can do, and runs whichever pipeline you pick.

<details>
<summary><strong>Agent doesn’t have this repo open? Use this instead.</strong></summary>

```
Open this repo: https://github.com/neo-onyx/openclaw-skills. Then read START_HERE.md then AGENTS.md. You are loading the openclaw-skills library — you get nine team pipelines. Learn them, then tell me what you can do and offer to run one. When I pick a pipeline and give input, use ENTRY-POINTS.md to find the SKILL file and execute the full pipeline per AGENTS.md.
```

</details>

<details>
<summary><strong>“Go and learn” — agent fetches the repo itself</strong></summary>

```
Go to this repo: https://github.com/neo-onyx/openclaw-skills. Read START_HERE.md then AGENTS.md. That’s your onboarding — you’ll have nine pipelines (marketing, product, data/ML, DevOps, security, docs, code migration, financial, exec). After you’ve read them, come back and tell me your capabilities and ask which pipeline I want to run and what input I have. Then run whatever I choose using ENTRY-POINTS.md and AGENTS.md.
```

</details>

---

## Why this?

| | |
|--|--|
| **No infra** | Skills are markdown. Your agent reads them and runs. No servers, no API keys. |
| **Any agent** | [Cursor](https://cursor.com), [Clawdbot](https://github.com/anthropics/claude-code), OpenClaw, or any LLM that can read files. |
| **One entry point** | You say `/product_analyst` and hand over a PRD. The agent runs the full chain: requirements → design → backend → frontend → QA. |
| **Nine teams** | Product, Data/ML, DevOps, Security, Docs, Migration, Finance, Exec, Marketing. Each is a pipeline of roles that hand off. |
| **Slash commands** | Use [COMMANDS.md](COMMANDS.md) to expose these as Telegram (or other) bot commands. |

---

## Teams

| Team | Command | What you get |
|------|---------|--------------|
| **Marketing** | `/ads_analyst` | Competitor ads → brand → campaign → creative → Meta Ads |
| **Full-Stack Product** | `/product_analyst` | PRD → requirements → design → backend → frontend → QA |
| **Data/ML** | `/data_analyst` | Data profile → ML design → MLOps → model card & report |
| **DevOps/SRE** | `/incident_triager` | Incident → runbook → post-mortem → SLO/chaos |
| **Security** | `/threat_researcher` | Scan → architecture → remediation → compliance |
| **Docs/DevRel** | `/api_explorer` | OpenAPI → reference docs → samples → publish |
| **Code Migration** | `/codebase_analyst` | Analyze → plan → refactor → verify |
| **Financial** | `/financial_analyst` | Actuals → budget/forecast → compliance → reporting |
| **CEO/Executive** | `/strategy_lead` | OKRs → board → IR → exec briefing |

---

## Quick Start

**1. Clone**

```bash
git clone https://github.com/neo-onyx/openclaw-skills.git
cd openclaw-skills
```

**2. Merge skills into your project** (optional — so your agent sees every pipeline in one place)

```powershell
# PowerShell
.\scripts\copy-all-skills.ps1 -Target "C:\path\to\your\project\skills"
```

```bash
# Bash / macOS / Linux
./scripts/copy-all-skills.sh /path/to/your/project/skills
```

**3. Tell your agent** — Use the [copy-paste block above](#-tell-your-agent). Or invoke a pipeline directly, e.g.:

| You want… | You run… |
|-----------|-----------|
| PRD → code + QA | `/product_analyst path/to/prd.md` |
| Data → model + report | `/data_analyst path/to/data.csv` |
| Incident → post-mortem | `/incident_triager` then paste alert |
| Repo → compliance report | `/threat_researcher path/to/repo` |
| OpenAPI → docs + samples | `/api_explorer path/to/openapi.yaml` |
| Migration plan + refactor | `/codebase_analyst path/to/repo` |
| Actuals → budget → report | `/financial_analyst Q1-2025` |
| OKRs → board → briefing | `/strategy_lead Q1-2025` |
| Ads → campaign → Meta | `/ads_analyst <Meta Ad Library URL>` |

---

## How it works

Each **team** is a pipeline of **roles** (orchestrator + workers). You invoke **one entry-point skill**; the agent opens the right `SKILL.md`, follows the workflow, calls sub-skills, and produces the deliverable. All skills live under **`teams/<team>/skills/`** — one folder per skill, each with a `SKILL.md` that defines role, phases, and handoffs. Full index: **[teams/SKILLS-INDEX.md](teams/SKILLS-INDEX.md)**.

**Usage:** Copy the merged `skills/` into your project (script above), or open this repo in your workspace and point the agent at `teams/*/skills/`. Cursor, Clawdbot, and OpenClaw all work. See [HOW-TO-RUN-TEAMS.md](HOW-TO-RUN-TEAMS.md) for details.

---

## Repo layout

```
openclaw-skills/
├── README.md           ← you are here
├── START_HERE.md       ← agent: read first, then AGENTS.md
├── AGENTS.md           ← how to resolve /command → SKILL and run pipelines
├── CAPABILITIES.md     ← "what can you do?" — 9 pipelines + inputs
├── ENTRY-POINTS.md     ← slash command → exact SKILL path
├── COMMANDS.md         ← Telegram/CLI: register these as bot commands
├── .cursorrules        ← Cursor: bootstrap via START_HERE + AGENTS
├── scripts/
│   ├── copy-all-skills.ps1
│   └── copy-all-skills.sh
└── teams/
    ├── SKILLS-INDEX.md
    ├── openclaw-marketing-team-main/
    ├── fullstack-product-team/
    ├── data-ml-team/
    ├── devops-sre-team/
    ├── security-team/
    ├── docs-devrel-team/
    ├── code-migration-team/
    ├── financial-team/
    └── ceo-executive-team/
```

---

## Docs

| Doc | Use it for |
|-----|-------------|
| [**START_HERE.md**](START_HERE.md) | Agent bootstrap: read first, then AGENTS.md |
| [**AGENTS.md**](AGENTS.md) | Full instructions: resolve `/command` → SKILL, run pipelines |
| [**CAPABILITIES.md**](CAPABILITIES.md) | "What can you do?" — 9 pipelines + entry points + inputs |
| [ENTRY-POINTS.md](ENTRY-POINTS.md) | One-table lookup: slash command → SKILL path |
| [COMMANDS.md](COMMANDS.md) | Register slash commands in Telegram or other bots |
| [.cursorrules](.cursorrules) | Cursor rule: START_HERE → AGENTS, own the 9 pipelines |
| [HOW-TO-RUN-TEAMS.md](HOW-TO-RUN-TEAMS.md) | Setup and invocation |
| [teams/SKILLS-INDEX.md](teams/SKILLS-INDEX.md) | Every skill (orchestrators + workers) |

---

## License

Per-team; most are MIT. See each team’s README under `teams/`.
