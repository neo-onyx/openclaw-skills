# Copy all team skills into a single target skills folder.
# Run from openclaw-skills repo root:
#   .\scripts\copy-all-skills.ps1 -Target "path\to\agent-workspace\skills"

param(
    [Parameter(Mandatory = $true)]
    [string]$Target
)

$ErrorActionPreference = "Stop"
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $scriptDir
$teamsDir = Join-Path $repoRoot "teams"

$teamFolders = @(
    "openclaw-marketing-team-main",
    "fullstack-product-team",
    "data-ml-team",
    "devops-sre-team",
    "security-team",
    "docs-devrel-team",
    "code-migration-team",
    "financial-team",
    "ceo-executive-team"
)

if (-not (Test-Path $Target)) {
    New-Item -ItemType Directory -Path $Target -Force | Out-Null
}

foreach ($team in $teamFolders) {
    $skillsPath = Join-Path $teamsDir (Join-Path $team "skills")
    if (Test-Path $skillsPath) {
        Write-Host "Copying $team\skills\* -> $Target"
        Copy-Item -Path (Join-Path $skillsPath "*") -Destination $Target -Recurse -Force
    } else {
        Write-Warning "Skip (not found): $skillsPath"
    }
}

Write-Host "Done. All skills merged into $Target"
