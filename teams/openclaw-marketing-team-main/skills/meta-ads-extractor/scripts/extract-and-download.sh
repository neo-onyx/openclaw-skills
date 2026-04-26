#!/usr/bin/env bash
# Extract and download ad assets from Meta Ads Library
# Usage: ./extract-and-download.sh <urls-json-file> <output-dir> <advertiser-slug>
#
# Input: JSON file with format: {"images": ["url1", ...], "videos": ["url1", ...], "posters": ["url1", ...]}
# Output: Downloaded files in output-dir named {slug}-{type}-{nn}.{ext}

set -euo pipefail

URLS_FILE="${1:?Usage: $0 <urls-json> <output-dir> <advertiser-slug>}"
OUTPUT_DIR="${2:?Usage: $0 <urls-json> <output-dir> <advertiser-slug>}"
SLUG="${3:?Usage: $0 <urls-json> <output-dir> <advertiser-slug>}"
DELAY="${4:-1}"  # seconds between downloads (default 1)

# Allowlist of trusted CDN domains for Meta ad assets
ALLOWED_DOMAINS="fbcdn\.net|cdninstagram\.com|facebook\.com|fbsbx\.com"

validate_url() {
  local url="$1"
  # Must be HTTPS and from an allowed domain
  if [[ ! "$url" =~ ^https:// ]]; then
    echo "   SKIP (not HTTPS): $url" >&2
    return 1
  fi
  local domain
  domain=$(echo "$url" | sed -E 's|^https://([^/]+).*|\1|')
  if ! echo "$domain" | grep -qE "($ALLOWED_DOMAINS)$"; then
    echo "   SKIP (untrusted domain: $domain): $url" >&2
    return 1
  fi
  return 0
}

mkdir -p "$OUTPUT_DIR"

echo "📥 Downloading assets for: $SLUG"
echo "   Output: $OUTPUT_DIR"

# Download images
n=0
jq -r '.images[]' "$URLS_FILE" 2>/dev/null | while read -r url; do
  validate_url "$url" || continue
  n=$((n+1))
  fname="${SLUG}-image-$(printf '%02d' $n).jpg"
  echo "   🖼  $fname"
  curl -sL --proto '=https' -o "$OUTPUT_DIR/$fname" "$url"
  sleep "$DELAY"
done

# Download videos
n=0
jq -r '.videos[]' "$URLS_FILE" 2>/dev/null | while read -r url; do
  validate_url "$url" || continue
  n=$((n+1))
  fname="${SLUG}-video-$(printf '%02d' $n).mp4"
  echo "   🎬 $fname"
  curl -sL --proto '=https' -o "$OUTPUT_DIR/$fname" "$url"
  sleep "$DELAY"
done

# Download video posters
n=0
jq -r '.posters[]' "$URLS_FILE" 2>/dev/null | while read -r url; do
  validate_url "$url" || continue
  n=$((n+1))
  fname="${SLUG}-poster-$(printf '%02d' $n).jpg"
  echo "   📸 $fname"
  curl -sL --proto '=https' -o "$OUTPUT_DIR/$fname" "$url"
  sleep "$DELAY"
done

echo "✅ Done. Files saved to $OUTPUT_DIR/"
ls -lh "$OUTPUT_DIR/${SLUG}-"* 2>/dev/null || echo "   (no files downloaded)"
