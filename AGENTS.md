# Instructions for agents (OpenClaw, Clawdbot, Cursor, etc.)

**When the user points you at this repo or asks you to run a team pipeline, follow this document.**

If you have not yet read **[START_HERE.md](START_HERE.md)**, do that first. It bootstraps you into this repo and tells you how to present yourself as the skilled agent.

---

## 0. Capabilities you have

You can run **nine team pipelines** end-to-end. When the user asks "what can you do?" or "your capabilities" or "help", use **[CAPABILITIES.md](CAPABILITIES.md)** to list them and offer to run one. Do not say you "can help with code" in a generic way — say you can run Marketing, Full-Stack Product, Data/ML, DevOps/SRE, Security, Docs/DevRel, Code Migration, Financial, and CEO/Executive pipelines, and ask which one they need and what input to provide.

---

## 1. Where am I running?

- **In this repo (openclaw-skills):** Skills are under `teams/<team-folder>/skills/<skill-folder>/SKILL.md`. Use the paths in the table in section 2.
- **In another workspace that copied these skills:** Skills are under `skills/<skill-folder>/SKILL.md` (flat). Slash commands like `/product_analyst` map to `skills/product-analyst/SKILL.md`. Use [teams/SKILLS-INDEX.md](teams/SKILLS-INDEX.md) to get the skill-folder name: command uses underscores, folder uses hyphens (e.g. `product_analyst` → `product-analyst`).

---

## 2. Entry points: slash command → SKILL file

Use this table to open the **first** SKILL for a pipeline. All paths are relative to this repo root.

| User said / invoked | Open this file (in-repo) |
|---------------------|--------------------------|
| `/ads_analyst` or "marketing team" | `teams/openclaw-marketing-team-main/skills/ads-analyst/SKILL.md` |
| `/product_analyst` or "product team" / "full-stack team" | `teams/fullstack-product-team/skills/product-analyst/SKILL.md` |
| `/data_analyst` or "data team" / "ML team" | `teams/data-ml-team/skills/data-analyst/SKILL.md` |
| `/incident_triager` or "incident" / "DevOps" / "SRE" | `teams/devops-sre-team/skills/incident-triager/SKILL.md` |
| `/threat_researcher` or "security team" | `teams/security-team/skills/threat-researcher/SKILL.md` |
| `/api_explorer` or "docs team" / "DevRel" | `teams/docs-devrel-team/skills/api-explorer/SKILL.md` |
| `/codebase_analyst` or "migration team" / "code migration" | `teams/code-migration-team/skills/codebase-analyst/SKILL.md` |
| `/financial_analyst` or "financial team" / "finance" | `teams/financial-team/skills/financial-analyst/SKILL.md` |
| `/strategy_lead` or "CEO team" / "executive team" | `teams/ceo-executive-team/skills/strategy-lead/SKILL.md` |

**Rule:** Slash commands use **underscores** (`product_analyst`). Folder names use **hyphens** (`product-analyst`). When in doubt, replace underscores with hyphens and look for that folder under the team’s `skills/` directory.  
To expose these as **Telegram** (or other) bot slash commands, see [COMMANDS.md](COMMANDS.md).

---

## 3. How to run a pipeline (step-by-step)

1. **Identify the entry point** from the user’s message (e.g. “run the product team”, “/product_analyst”, “use the financial pipeline”). Match to one row in the table above.
2. **Open that SKILL.md** (in-repo path from table, or in a merged workspace: `skills/<skill-folder>/SKILL.md`).
3. **Read the SKILL.md** fully. It contains:
   - **Role** – who you are in this step
   - **Workflow** – phases to run in order
   - **Sub-skills** – other skills to call (e.g. “run `/requirements_extractor`”)
   - **Handoff** – next orchestrator to invoke (e.g. “invoke `/tech_lead`”)
   - **Output** – where to write files (e.g. `output/{feature-slug}/requirements/`)
4. **Execute phase by phase:**
   - For each phase, do what the SKILL says: run a sub-skill, generate content, or write files.
   - **To run a sub-skill:** Find that skill’s SKILL.md. In this repo: same team’s `teams/<team>/skills/<skill-folder>/SKILL.md` (use SKILLS-INDEX or convert name: `tech_lead` → `tech-lead`). In a merged workspace: `skills/<skill-folder>/SKILL.md`. Open it, follow its Role, Input, Output, and Rules, then return to the orchestrator’s next phase.
   - **To hand off:** When the SKILL says “invoke `/next_orchestrator`”, open that orchestrator’s SKILL.md (same team or from SKILLS-INDEX), pass the context and paths the current SKILL specifies, and continue from that SKILL’s workflow from the start.
5. **Write outputs** to the paths the SKILL specifies. Create parent directories if needed. Use the workspace root or the path the user gave (e.g. `output/` under current project).
6. **Checkpoints:** When the SKILL says “Checkpoint”, you may summarize progress to the user and, if the SKILL says so, wait for approval before continuing.
7. **Repeat** until the pipeline reaches the end (a SKILL that says “No handoff” / “Final stage” / “Done”).

---

## 4. Resolving any slash command to a SKILL file

When a SKILL says “run `/some_skill`” or “invoke `/other_skill`”:

- **Name conversion:** `some_skill` (underscores) → folder `some-skill` (hyphens).
- **In this repo:** The sub-skill usually lives in the **same team** as the current SKILL. Example: if you are in `teams/fullstack-product-team/skills/product-analyst/SKILL.md` and it says “run `/requirements_extractor`”, open `teams/fullstack-product-team/skills/requirements-extractor/SKILL.md`. If the next step is another **orchestrator** (e.g. `/tech_lead`), it’s in the same team: `teams/fullstack-product-team/skills/tech-lead/SKILL.md`. For the full list of which skill lives in which team, use ** [teams/SKILLS-INDEX.md](teams/SKILLS-INDEX.md)**.
- **In a merged workspace:** Open `skills/some-skill/SKILL.md` (all skills are in one flat `skills/` tree).

---

## 5. Inputs from the user

- The user may give a **path** (e.g. `docs/prd.md`, `data/training.csv`), a **period** (e.g. `Q1-2025`), or **pasted content** (e.g. alert text, PRD). Use that as the input for the entry-point skill’s first phase.
- If the user says “run the product team” without a path, ask for the PRD path or paste, or use a path they provided earlier in the conversation.

---

## 6. Summary for quick lookup

| I want to… | Entry-point SKILL path (in-repo) |
|------------|----------------------------------|
| Run marketing pipeline | `teams/openclaw-marketing-team-main/skills/ads-analyst/SKILL.md` |
| Run product pipeline | `teams/fullstack-product-team/skills/product-analyst/SKILL.md` |
| Run data/ML pipeline | `teams/data-ml-team/skills/data-analyst/SKILL.md` |
| Run DevOps/SRE pipeline | `teams/devops-sre-team/skills/incident-triager/SKILL.md` |
| Run security pipeline | `teams/security-team/skills/threat-researcher/SKILL.md` |
| Run docs/DevRel pipeline | `teams/docs-devrel-team/skills/api-explorer/SKILL.md` |
| Run code migration pipeline | `teams/code-migration-team/skills/codebase-analyst/SKILL.md` |
| Run financial pipeline | `teams/financial-team/skills/financial-analyst/SKILL.md` |
| Run CEO/executive pipeline | `teams/ceo-executive-team/skills/strategy-lead/SKILL.md` |

**Full index of every skill (for sub-skills and workers):** [teams/SKILLS-INDEX.md](teams/SKILLS-INDEX.md)

---

## 7. Conventions (outputs and naming)

- **Output root:** Pipelines write under `output/` unless the user specifies another root or the SKILL says otherwise. Create any needed subdirectories.
- **Scopes:** Use the scope the SKILL defines (e.g. `output/{feature-slug}/`, `output/finance/{period}/`, `output/incidents/{incident-id}/`, `output/security/{project}/`). Derive slugs from the input (PRD title → feature-slug, alert → incident-id, period → Q1-2025).
- **Consistency:** Once you choose a slug or ID for a run, use it for all outputs and handoffs in that pipeline.
