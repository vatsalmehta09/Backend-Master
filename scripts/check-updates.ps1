<#
.SYNOPSIS
    Automated Upstream & Local Update Checker for Backend-Master Curated Skills.

.DESCRIPTION
    1. Compares the repository's 65 replicated sub-skills against upstream Git repositories
       using the commit SHAs recorded in upstream-lock.json.
    2. Compares repository replicas against locally installed skills in ~/.agents/skills/
       to detect local drift or improvements.
    3. Optionally syncs and updates the repository replicas and commits to GitHub.

.PARAMETER ApplyLocal
    Syncs updated local skills from ~/.agents/skills/ into the repo's skills/ directory
    and updates upstream-lock.json.

.PARAMETER AutoCommit
    When -ApplyLocal is used, automatically creates a Git commit and pushes to origin/main.

.PARAMETER Fast
    Skips remote network checks and checks only local drift between ~/.agents/skills/ and repo.

.EXAMPLE
    pwsh scripts/check-updates.ps1
    pwsh scripts/check-updates.ps1 -ApplyLocal -AutoCommit
#>
param(
    [switch]$ApplyLocal,
    [switch]$AutoCommit,
    [switch]$Fast
)

$ErrorActionPreference = "Continue"

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $scriptDir
$skillsDir = Join-Path $repoRoot "skills"
$lockFile = Join-Path $repoRoot "upstream-lock.json"
$localSkillsBase = "C:\Users\VATSAL M\.agents\skills"

if (-not (Test-Path $lockFile)) {
    Write-Error "Lockfile not found at: $lockFile"
    exit 1
}

$lockData = Get-Content $lockFile -Raw | ConvertFrom-Json

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "  Backend-Master Skill Update Checker" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "Repository root:     $repoRoot"
Write-Host "Managed sub-skills:  $($lockData.total_managed_skills)"
Write-Host "Upstream sources:    $(($lockData.sources.PSObject.Properties | Measure-Object).Count) repositories"
Write-Host ""

$upstreamUpdates = 0
$localDrifts = 0
$upToDateCount = 0

# 1. Check Upstream Remote Repositories
if (-not $Fast) {
    Write-Host "--- [1/2] Checking Upstream Git Repositories ---" -ForegroundColor Yellow
    foreach ($prop in $lockData.sources.PSObject.Properties) {
        $sourceName = $prop.Name
        $sourceObj = $prop.Value
        $repoUrl = $sourceObj.repo
        $trackedCommit = $sourceObj.tracked_commit

        try {
            $lsRemote = git ls-remote $repoUrl HEAD 2>$null
            if ($lsRemote) {
                $remoteSha = ($lsRemote -split "`t")[0].Trim()
                if ($remoteSha -ne $trackedCommit) {
                    Write-Host "  🟡 [UPDATE AVAILABLE] $sourceName" -ForegroundColor Yellow
                    Write-Host "     Tracked: $($trackedCommit.Substring(0,8)) -> Latest: $($remoteSha.Substring(0,8))" -ForegroundColor Gray
                    Write-Host "     Affects: $($sourceObj.skills -join ', ')" -ForegroundColor DarkGray
                    $upstreamUpdates++
                } else {
                    Write-Host "  🟢 [UP TO DATE] $sourceName ($($trackedCommit.Substring(0,8)))" -ForegroundColor Green
                    $upToDateCount++
                }
            } else {
                Write-Host "  ⚪ [SKIP] $sourceName (could not connect to remote)" -ForegroundColor DarkGray
            }
        } catch {
            Write-Host "  ⚪ [WARN] $sourceName ($($_.Exception.Message))" -ForegroundColor DarkGray
        }
    }
    Write-Host ""
}

# 2. Check Local Replica Synchronization
Write-Host "--- [2/2] Checking Local Skill Sync (~/.agents/skills vs repo) ---" -ForegroundColor Yellow
$skillsToSync = @()

$repoSkills = Get-ChildItem -Path $skillsDir -Directory | Where-Object { $_.Name -ne "backend-master" }

foreach ($dir in $repoSkills) {
    $skillName = $dir.Name
    $repoSkillFile = Join-Path $dir.FullName "SKILL.md"
    $localSkillFile = Join-Path $localSkillsBase (Join-Path $skillName "SKILL.md")

    if (Test-Path $localSkillFile) {
        $repoHash = (Get-FileHash $repoSkillFile).Hash
        $localHash = (Get-FileHash $localSkillFile).Hash

        if ($repoHash -ne $localHash) {
            Write-Host "  🔵 [LOCAL DRIFT] $skillName (local ~/.agents/skills version has edits)" -ForegroundColor Cyan
            $localDrifts++
            $skillsToSync += $skillName
        }
    }
}

if ($localDrifts -eq 0) {
    Write-Host "  🟢 All $($lockData.total_managed_skills) repo replicas match local ~/.agents/skills exactly!" -ForegroundColor Green
}

Write-Host ""
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "  Update Check Summary" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "  Upstream Repos Checked:     $(($lockData.sources.PSObject.Properties | Measure-Object).Count)"
Write-Host "  Upstream Updates Available: $upstreamUpdates"
Write-Host "  Local Drifts Detected:      $localDrifts"

# 3. Apply Local Updates if Requested
if ($ApplyLocal -and $localDrifts -gt 0) {
    Write-Host ""
    Write-Host "Applying local updates to repository replicas..." -ForegroundColor Yellow
    foreach ($s in $skillsToSync) {
        $src = Join-Path $localSkillsBase $s
        $dst = Join-Path $skillsDir $s
        $robocopyArgs = @(
            $src, $dst, "/MIR",
            "/XD", ".git", "node_modules", "__pycache__",
            "/XF", ".DS_Store", "desktop.ini",
            "/NFL", "/NDL", "/NJH", "/NJS", "/nc", "/ns", "/np"
        )
        & robocopy.exe @robocopyArgs | Out-Null
        Write-Host "  ✓ Updated replica: $s" -ForegroundColor Green
    }

    # Update timestamp in upstream-lock.json
    $lockData.last_checked = (Get-Date).ToUniversalTime().ToString("yyyy-MM-ddTHH:mm:ssZ")
    $lockData | ConvertTo-Json -Depth 5 | Set-Content $lockFile -Encoding UTF8
    Write-Host "  ✓ Updated $lockFile timestamp" -ForegroundColor Green

    if ($AutoCommit) {
        Write-Host ""
        Write-Host "Committing and pushing to GitHub..." -ForegroundColor Cyan
        git -C $repoRoot add -A
        $msg = "chore: sync local skill updates ($($skillsToSync -join ', '))"
        git -C $repoRoot commit -m $msg
        git -C $repoRoot push origin main
        Write-Host "  ✓ Pushed to origin/main" -ForegroundColor Green
    }
}

Write-Host ""
if ($upstreamUpdates -gt 0) {
    Write-Host "💡 Note: Run 'npx skills update' locally to pull upstream changes, then run 'pwsh scripts/check-updates.ps1 -ApplyLocal -AutoCommit' to update repo replicas." -ForegroundColor Yellow
}
