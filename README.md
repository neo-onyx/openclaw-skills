**→ Agent sent here? Read [START_HERE.md](START_HERE.md) then [AGENTS.md](AGENTS.md). You get 9 pipelines; list them, offer to run one, execute per AGENTS.md.**

<div align="center">

# OpenClaw Skills

**Nine AI team pipelines for your agents.**  
Drop-in skills for [Clawdbot](https://github.com/anthropics/claude-code), OpenClaw, [Cursor](https://cursor.com), and other AI coding agents.

One entry point → full pipeline. From PRD to shipped feature, incident to post-mortem, or data to model card.

[Quick Start](#-quick-start) · [Teams](#-teams) · [Usage](#-usage) · [Docs](#-docs)

**Sending an agent here (OpenClaw, Clawdbot, Cursor)?**  
Tell the agent: **"Read [START_HERE.md](START_HERE.md) then [AGENTS.md](AGENTS.md). You have nine team pipelines; list them and offer to run one. Use [ENTRY-POINTS.md](ENTRY-POINTS.md) to resolve any pipeline to a SKILL file, and execute per AGENTS.md."**  
That’s all the agent needs to become the full skilled agent.

</div>

---

## What is this?

This repo is a **skills library**: each “team” is a **pipeline of roles** (orchestrators + workers) that hand off to each other. You invoke **one entry-point skill** with your input; the agent follows the workflow, calls sub-skills, and produces the full deliverable.

- **No custom infra.** Skills are markdown (SKILL.md) + your agent. Copy the `skills/` you need into your workspace, or point your agent at this repo.
- **Works with any agent** that can read files and follow instructions. Cursor, Clawdbot, OpenClaw, or any LLM with access to the repo.
- **Nine teams** covering product, data/ML, DevOps, security, docs, migration, finance, exec, and marketing.

<table>
<tr>
<td width="50%">

**Example: Full-Stack Product**

```
/product_analyst docs/prd.md
     ↓
  requirements + user stories
     ↓
  /tech_lead → API + schema + tickets
     ↓
  /backend_dev → implementation + tests
     ↓
  /frontend_dev → UI + integration
     ↓
  /qa_reviewer → test plan, PR checklist, changelog
```

</td>
<td width="50%">

**Example: Data/ML**

```
/data_analyst data/training.csv
     ↓
  profile + EDA + schema
     ↓
  /ml_engineer → feature spec + training script
     ↓
  /mlops → deploy + monitor + retrain
     ↓
  /report_owner → model card + metric report
```

</td>
</tr>
</table>

---

## Quick Start

**1. Clone or copy this repo.**

```bash
git clone https://github.com/your-org/openclaw-skills.git
cd openclaw-skills
```

**2. Merge all skills into your project** (so your agent can see every pipeline):

```powershell
# PowerShell
.\scripts\copy-all-skills.ps1 -Target "C:\path\to\your\project\skills"
```

```bash
# Bash / macOS / Linux
./scripts/copy-all-skills.sh /path/to/your/project/skills
```

**3. In your agent,** invoke the entry point for the team you want:

| You want to…                    | Run this |
|---------------------------------|----------|
| Turn a PRD into code + QA        | `/product_analyst path/to/prd.md` |
| Go from data to model + report   | `/data_analyst path/to/data.csv` |
| Run incident → post-mortem → SLO | `/incident_triager` then paste alert |
| Scan repo → compliance report    | `/threat_researcher path/to/repo` |
| Build API docs + samples        | `/api_explorer path/to/openapi.yaml` |
| Plan a code migration            | `/codebase_analyst path/to/repo` |
| Actuals → budget → reporting     | `/financial_analyst Q1-2025` |
| OKRs → board → IR → briefing     | `/strategy_lead Q1-2025` |
| Competitor ads → campaign → Meta | `/ads_analyst <Meta Ad Library URL>` |

That’s it. The agent loads the right SKILL, runs the workflow, and hands off between roles as defined in each team.

---

## Teams

| Team | Entry point | What it does |
|------|-------------|--------------|
| **Marketing** | `/ads_analyst` | Competitor ads → brand → campaign → creative → Meta Ads |
| **Full-Stack Product** | `/product_analyst` | PRD → requirements → design → backend → frontend → QA |
| **Data/ML** | `/data_analyst` | Data profile → ML design → MLOps → model card & report |
| **DevOps/SRE** | `/incident_triager` | Incident → runbook → post-mortem → SLO/chaos |
| **Security** | `/threat_researcher` | Scan → architecture → remediation → compliance |
| **Docs/DevRel** | `/api_explorer` | OpenAPI → reference docs → samples/tutorials → publish |
| **Code Migration** | `/codebase_analyst` | Analyze → plan → refactor → verify |
| **Financial** | `/financial_analyst` | Actuals → budget/forecast → compliance → reporting |
| **CEO/Executive** | `/strategy_lead` | OKRs → board → IR → exec briefing |

All teams live under **[`teams/`](teams/)**. Each team folder has a `skills/` subfolder with orchestrator and worker SKILLs. Full index: **[teams/SKILLS-INDEX.md](teams/SKILLS-INDEX.md)**.

---

## Usage

### Option A: Copy skills into your project (recommended)

Run the script from this repo root (see [Quick Start](#-quick-start)). Your project gets one merged `skills/` tree; your agent resolves e.g. `/product_analyst` to `skills/product-analyst/SKILL.md` and follows it.

### Option B: Use this repo as the skills source

- **Cursor:** Open this repo (or add it as a workspace folder). In chat: *“Skills are in `teams/*/skills/`. Run the financial team pipeline: start with `financial_analyst` for Q1-2025.”* The agent reads the SKILLs and runs the workflow.
- **Clawdbot / OpenClaw:** Copy this repo (or the merged `skills/` from the script) into the workspace where the agent runs, then use the slash commands from the table above.

### Manual copy (no script)

Copy each team’s skills into your project’s `skills/` folder:

```bash
cp -r teams/fullstack-product-team/skills/* /path/to/project/skills/
cp -r teams/data-ml-team/skills/* /path/to/project/skills/
# ... repeat for each team you need
```

---

## Repo structure

```
openclaw-skills/
├── README.md                 ← you are here
├── START_HERE.md             ← agent: read this first, then AGENTS.md
├── AGENTS.md                 ← full instructions for running any pipeline
├── CAPABILITIES.md           ← "what can you do?" — 9 pipelines + inputs
├── ENTRY-POINTS.md           ← slash command → exact SKILL path
├── .cursorrules              ← Cursor: bootstrap via START_HERE + AGENTS
├── HOW-TO-RUN-TEAMS.md       ← setup and invocation
├── .gitignore
├── scripts/
│   ├── copy-all-skills.ps1   # merge all skills into a target folder
│   └── copy-all-skills.sh
└── teams/
    ├── README.md
    ├── HOW-TO-RUN-TEAMS.md
    ├── SKILLS-INDEX.md       ← every skill (orchestrators + workers)
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

Each team folder contains a `skills/` directory with one subfolder per skill (e.g. `product-analyst/`, `tech-lead/`), each with a `SKILL.md` that defines the role, workflow, and handoffs.

---

## Entry points at a glance

| Command | Input | Pipeline |
|---------|--------|----------|
| `/ads_analyst` | Meta Ad Library URL | Marketing |
| `/product_analyst` | PRD or brief path | Full-Stack Product |
| `/data_analyst` | Dataset path | Data/ML |
| `/incident_triager` | Alert or log (paste) | DevOps/SRE |
| `/threat_researcher` | Repo path | Security |
| `/api_explorer` | OpenAPI URL or path | Docs/DevRel |
| `/codebase_analyst` | Repo path | Code Migration |
| `/financial_analyst` | Period or data path | Financial |
| `/strategy_lead` | Period or context | CEO/Executive |

---

## Docs

| Doc | Description |
|-----|-------------|
| **[START_HERE.md](START_HERE.md)** | **Agent bootstrap:** Read this first, then AGENTS.md. You get 9 pipelines and how to present yourself. |
| **[AGENTS.md](AGENTS.md)** | **Full instructions:** Where skills live, how to resolve any `/command` → SKILL file, how to run pipelines. |
| **[CAPABILITIES.md](CAPABILITIES.md)** | **"What can you do?"** — List of 9 pipelines with entry points and inputs. Use when the user asks. |
| [ENTRY-POINTS.md](ENTRY-POINTS.md) | One-table lookup: slash command → exact SKILL path |
| [.cursorrules](.cursorrules) | Cursor rule: read START_HERE → AGENTS; own the 9 pipelines; execute per AGENTS.md |
| [HOW-TO-RUN-TEAMS.md](HOW-TO-RUN-TEAMS.md) | Setup and invocation (for humans) |
| [teams/SKILLS-INDEX.md](teams/SKILLS-INDEX.md) | Full list of every skill (orchestrators + workers) |
| [teams/README.md](teams/README.md) | Teams overview and copy script |

---

## License

Per-team; most are MIT. See each team’s README under `teams/`.
