# Marketing Team Template for Clawdbot

Build a complete AI marketing team using Clawdbot (Claude Code). This template includes skills for competitive research, campaign planning, creative production, and ad publishing.

## The Pipeline

```
┌─────────────┐    ┌─────────────────────┐    ┌────────────────────┐    ┌──────────────────────┐
│ ads_analyst │ → │  head_of_marketing  │ → │  creative_director │ → │  performance_marketer │
│ (research)  │    │  (brand + campaign) │    │  (build assets)    │    │  (publish + optimize) │
└─────────────┘    └─────────────────────┘    └────────────────────┘    └──────────────────────┘
```

**Start here:** `/ads_analyst {Meta Ad Library URL}` — runs the full pipeline.

---

## What's Included

### Orchestrators (entry points)

| Skill | What it does | Hands off to |
|-------|--------------|--------------|
| `/ads_analyst` | Full competitor research pipeline | → `/head_of_marketing` |
| `/head_of_marketing` | Brand analysis + campaign planning | → `/creative_director` |
| `/creative_director` | Orchestrate asset production | → `/performance_marketer` |
| `/performance_marketer` | Publish campaigns + optimize performance | — |

### Research & Analysis (used by `/ads_analyst`)

| Skill | What it does |
|-------|--------------|
| `/meta_ads_extractor` | Download ad creatives from Meta Ad Library |
| `/meta_ads_analyser` | Generate strategy report with funnel mapping |
| `/ad_creative_analysis` | Deep-dive analysis of individual ads |
| `/landing_page_analysis` | Analyze competitor landing pages |

### Strategy (used by `/head_of_marketing`)

| Skill | What it does |
|-------|--------------|
| `/website_brand_analysis` | Generate brand bible + design system from any website |
| `/campaign_planner` | Create campaign strategy, funnel, and creative briefs |

### Asset Creation (used by `/creative_director`)

| Skill | What it does |
|-------|--------------|
| `/ad_designer` | Generate image ads using AI |
| `/scriptwriter` | Write video ad scripts with production notes |
| `/page_designer` | Build landing pages from brand guidelines |
| `/frontend_design` | General-purpose web design |

### Publishing & Optimization (used by `/performance_marketer`)

| Skill | What it does |
|-------|--------------|
| `/meta_ads_publisher` | Publish campaigns to Meta Ads Manager (PAUSED for review) |

---

## Quick Start

### The Full Workflow

```bash
# Step 1: Research competitors
/ads_analyst {Meta Ad Library URL}
# Example: /ads_analyst https://www.facebook.com/ads/library/?active_status=active&ad_type=all&country=ALL&view_all_page_id=123456789

# After research, ads_analyst prompts you for your website URL
# and hands off to head_of_marketing

# Step 2: Brand + Campaign (automatic handoff)
# → Analyzes your brand
# → Creates campaign proposal
# → Waits for your approval

# Step 3: Asset Production (automatic handoff)
# → Creates landing pages
# → Creates image ads
# → Creates video scripts
# → Reviews everything for brand consistency

# Step 4: Publish + Optimize (automatic handoff)
# → Creates campaigns in Meta Ads Manager (PAUSED)
# → Reviews before going live
# → Monitors and optimizes performance
```

### Running Individual Skills

You can also run skills individually:

```bash
/ads_analyst {Meta Ad Library URL}       # Just competitor research
/head_of_marketing {your-website}        # Just brand + campaign
/creative_director                        # Just build assets
/website_brand_analysis {url}            # Just brand bible
/campaign_planner                         # Just campaign strategy
```

---

## Setup

### 1. Install Clawdbot

Follow the [Clawdbot installation guide](https://github.com/anthropics/claude-code) to set up Claude Code on your machine.

### 2. Add Skills to Your Workspace

Copy the `skills/` folder to your Clawdbot workspace:

```bash
cp -r skills/ ~/your-workspace/skills/
```

### 3. Configure Environment Variables

Copy the example environment file and add your API keys:

```bash
cp .env.example .env
```

Edit `.env` with your actual values:
- `GEMINI_API_KEY` - For image generation and video analysis
- `META_ACCESS_TOKEN` - For publishing to Meta Ads
- `META_AD_ACCOUNT_ID` - Your ad account
- `META_PAGE_ID` - Facebook Page for ad identity

See `TOOLS.md` for detailed setup instructions.

### 4. Add Your Brand Assets

Replace the placeholders in `assets/brand/`:
- Add your logo as `logo.svg` (or `.png`)
- Add your brand fonts to `fonts/`

---

## Outputs

The pipeline generates these files in your `output/` folder:

```
output/
├── meta-ads/{competitor}/           # From ads_analyst
│   ├── assets/                      # Downloaded ad creatives
│   ├── deep-dives/                  # Individual ad analyses
│   ├── landing-pages/               # Landing page analyses
│   ├── {competitor}-analysis.html   # Strategy report
│   └── MASTER-REPORT.md             # Executive summary
│
├── {brand}-brand-bible.md           # From head_of_marketing
├── {brand}-design-system.css        # From head_of_marketing
├── {brand}-campaign-proposal.md     # From head_of_marketing
├── {brand}-campaign-proposal.html   # From head_of_marketing
│
└── {brand}-campaign/                # From creative_director
    ├── landing-pages/               # Built HTML pages
    ├── ad-images/                   # Generated ad creatives
    ├── scripts/                     # Video scripts
    └── CAMPAIGN-ASSETS.md           # Asset index
```

---

## Checkpoints & Approvals

The pipeline has built-in checkpoints where you can review and adjust:

1. **After competitor research** — Review intel, choose to continue
2. **After brand analysis** — Confirm all pages captured correctly
3. **After campaign proposal** — Approve strategy before production
4. **After each asset** — Creative director reviews before showing you
5. **Before publishing** — All ads created as PAUSED in Meta

---

## File Structure

```
marketing-team-template/
├── README.md              # This file
├── TOOLS.md               # API setup guide
├── .env.example           # Environment variables template
├── assets/
│   └── brand/
│       ├── logo.svg       # Your logo (replace this)
│       └── fonts/         # Your brand fonts
└── skills/
    ├── README.md          # Pipeline documentation
    │
    │   # Orchestrators
    ├── ads-analyst/
    ├── head-of-marketing/
    ├── creative-director/
    ├── performance-marketer/
    │
    │   # Research skills
    ├── meta-ads-extractor/
    ├── meta-ads-analyser/
    ├── ad-creative-analysis/
    ├── landing-page-analysis/
    │
    │   # Strategy skills
    ├── website-brand-analysis/
    ├── campaign-planner/
    │
    │   # Production skills
    ├── ad-designer/
    ├── scriptwriter/
    ├── page-designer/
    ├── frontend-design/
    │
    │   # Publishing
    └── meta-ads-publisher/
```

---

## Requirements

- **Clawdbot** (Claude Code) with browser access
- **Gemini API key** (free tier works for testing)
- **Meta Marketing API** access (requires Business account)
- Basic command line familiarity

---

## Tips

1. **Start with `/ads_analyst`** — Pass a Meta Ad Library URL to kick off the pipeline
2. **Analyze 2-3 competitors** — More context = better campaigns
3. **Trust the checkpoints** — Review at each stage before proceeding
4. **All ads are PAUSED** — Nothing goes live without your approval
5. **Iterate freely** — Use feedback loops with `/creative_director`

### Finding Meta Ad Library URLs

1. Go to [Meta Ad Library](https://www.facebook.com/ads/library/)
2. Search for a competitor's Facebook Page name
3. Click on their page to see all their ads
4. Copy the URL — it will look like:
   ```
   https://www.facebook.com/ads/library/?active_status=active&ad_type=all&country=ALL&view_all_page_id=123456789
   ```

---

## License

MIT - Use freely, modify as needed.
