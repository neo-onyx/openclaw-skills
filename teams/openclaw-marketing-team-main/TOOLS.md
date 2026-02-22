# TOOLS.md - API Setup Guide

This file explains how to set up the APIs needed for the marketing workflow.

## Quick Start

1. Copy `.env.example` to `.env`
2. Get your API keys (instructions below)
3. Add keys to `.env`
4. Tell Clawdbot where to find your `.env` file

---

## Gemini API

**Used for:** Image generation (ad creatives) and video analysis (competitor research)

### Get Your API Key

1. Go to [Google AI Studio](https://aistudio.google.com/app/apikey)
2. Click "Create API Key"
3. Copy the key to your `.env` file

### Models Used

| Model | Purpose |
|-------|---------|
| `gemini-2.0-flash` | Video analysis, ad creative analysis |
| `gemini-2.0-flash-preview-image-generation` | Image generation (ad creatives) |

### Test Your Key

```bash
curl "https://generativelanguage.googleapis.com/v1beta/models?key=$GEMINI_API_KEY" | head -20
```

---

## Meta Marketing API

**Used for:** Publishing ads to Meta Ads Manager

### Prerequisites

- Facebook Business Account
- Ad Account with payment method set up
- Facebook Page to run ads from

### Setup Steps

#### 1. Create a Meta App

1. Go to [Meta for Developers](https://developers.facebook.com/)
2. Create a new app (Business type)
3. Add the "Marketing API" product

#### 2. Get Your Ad Account ID

1. Go to [Ads Manager](https://www.facebook.com/adsmanager)
2. Click the account dropdown (top left)
3. Your account ID is shown (format: `act_123456789`)

#### 3. Get Your Page ID

1. Go to your Facebook Page
2. Click "About" → "Page transparency"
3. Or use: `https://www.facebook.com/YOUR_PAGE/about`
4. Page ID is in the URL or transparency section

#### 4. Generate Access Token

**For testing (short-lived):**
1. Go to [Graph API Explorer](https://developers.facebook.com/tools/explorer/)
2. Select your app
3. Add permissions: `ads_management`, `ads_read`, `pages_read_engagement`
4. Generate token

**For production (long-lived):**
1. Create a System User in Business Manager
2. Generate a token with `ads_management` permission
3. System user tokens don't expire

### Required Permissions

| Permission | Purpose |
|------------|---------|
| `ads_management` | Create/edit campaigns, ad sets, ads |
| `ads_read` | Read ad performance data |
| `pages_read_engagement` | Access Page for ad identity |

### Test Your Setup

```bash
# Test token validity
curl "https://graph.facebook.com/v21.0/me?access_token=$META_ACCESS_TOKEN"

# Test ad account access
curl "https://graph.facebook.com/v21.0/$META_AD_ACCOUNT_ID?access_token=$META_ACCESS_TOKEN"
```

### API Version

This template uses Meta Marketing API **v21.0**. Update the version in skill files if needed.

---

## Browser Tool

**Used for:** Extracting ads from Meta Ad Library, taking landing page screenshots

The `/meta_ads_extractor` and `/landing_page_analysis` skills use browser automation. Clawdbot handles this automatically via the `browser` tool.

No additional setup needed - just make sure Clawdbot has browser access enabled.

---

## Troubleshooting

### "Invalid OAuth access token"
- Token expired → Generate a new one
- Wrong permissions → Check token has `ads_management`

### "Ad account not found"
- Check account ID format (must include `act_` prefix)
- Verify token has access to this ad account

### Image generation fails
- Check Gemini API key is valid
- Verify you have quota remaining
- Some prompts may be blocked by safety filters

### Browser automation fails
- Ensure browser tool is enabled in Clawdbot
- Try running with `profile=openclaw` for isolated browser
