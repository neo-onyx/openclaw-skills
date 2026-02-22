#!/usr/bin/env bash
# Copy all team skills into a single target skills folder.
# Run from openclaw-skills repo root:
#   ./scripts/copy-all-skills.sh path/to/agent-workspace/skills

set -e
TARGET="${1:?Usage: $0 <target-skills-path>}"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
TEAMS_DIR="$REPO_ROOT/teams"

TEAMS="openclaw-marketing-team-main fullstack-product-team data-ml-team devops-sre-team security-team docs-devrel-team code-migration-team financial-team ceo-executive-team"

mkdir -p "$TARGET"
for team in $TEAMS; do
  SRC="$TEAMS_DIR/$team/skills"
  if [ -d "$SRC" ]; then
    echo "Copying $team/skills/* -> $TARGET"
    cp -R "$SRC"/* "$TARGET"/
  else
    echo "Skip (not found): $SRC"
  fi
done
echo "Done. All skills merged into $TARGET"
