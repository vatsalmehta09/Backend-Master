<#
.SYNOPSIS
    Synchronizes local Backend-Master sub-skills with the GitHub repository.
    Handles Adds, Updates, and Prunes (deletes removed skills).

.DESCRIPTION
    Mirrors the 42 curated backend skills from ~/.agents/skills/ into the repo's
    skills/ folder. Any skill deleted locally will be deleted in the repo.
    Any new or modified skill files will be updated.

.PARAMETER DryRun
    Simulates changes without modifying the Git repository.

.PARAMETER AutoPush
    Automatically commits and pushes changes to GitHub if changes exist.

.PARAMETER CommitMessage
    Custom commit message. If omitted, an informative summary is generated.
#>
param(
    [switch]$DryRun,
    [switch]$AutoPush = $true,
    [string]$CommitMessage = ""
)

$ErrorActionPreference = "Stop"

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $scriptDir
$skillsTargetDir = Join-Path $repoRoot "skills"
$localSkillsBase = "C:\Users\VATSAL M\.agents\skills"

# 71 backend-master curated skills (1 orchestrator + 70 sub-skills)
$backendSkills = @(
    "backend-master",
    "clean-ddd-hexagonal",
    "backend-patterns",
    "architecture-patterns",
    "microservices-architect",
    "api-and-interface-design",
    "graphql-architect",
    "api-designer",
    "rest-api",
    "websocket-engineer",
    "websockets",
    "public-grpc-api-design",
    "webhook-platform-design",
    "sql-pro",
    "postgres-pro",
    "database-optimizer",
    "database-migration",
    "redis-patterns",
    "mongodb-connection",
    "mongodb-query-optimizer",
    "elasticsearch-index-design",
    "supabase-postgres-best-practices",
    "django-storages-s3",
    "runtime-cache",
    "vercel-storage",
    "python-pro",
    "fastapi-expert",
    "django-expert",
    "managing-python-dependencies",
    "nestjs-expert",
    "golang-pro",
    "rust-engineer",
    "spring-boot-engineer",
    "csharp-developer",
    "rails-expert",
    "laravel-specialist",
    "php-pro",
    "micro",
    "temporal-developer",
    "temporal-cloud-setup",
    "temporal-ops",
    "temporal-serverless",
    "kafka-development",
    "rabbitmq-development",
    "vercel-queues",
    "rag-architect",
    "ai-gateway",
    "devops-engineer",
    "docker-patterns",
    "cloud-architect",
    "shipping-and-launch",
    "ci-cd-and-automation",
    "git-workflow-and-versioning",
    "deprecation-and-migration",
    "observability-and-instrumentation",
    "monitoring-expert",
    "sentry",
    "kubernetes-specialist",
    "terraform-engineer",
    "sre-engineer",
    "test-master",
    "k6",
    "performance-optimization",
    "auth",
    "oauth",
    "security-and-hardening",
    "security-audit",
    "security-diff-scan",
    "owasp-top-10-testing",
    "api-security-testing",
    "vibesec"
)

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "  Backend-Master Skill Synchronizer" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "Local source:  $localSkillsBase"
Write-Host "Repo target:   $skillsTargetDir"
Write-Host "Total Managed Skills: $($backendSkills.Count)"
Write-Host "DryRun Mode:   $DryRun"
Write-Host ""

if (-not (Test-Path $skillsTargetDir)) {
    if (-not $DryRun) {
        New-Item -ItemType Directory -Path $skillsTargetDir -Force | Out-Null
    }
}

# 1. Sync / Copy / Update local backend skills into repo
$copiedCount = 0
$prunedCount = 0

function Invoke-MirrorDirectory([string]$src, [string]$dst, [string[]]$excludeDirs = @(), [string[]]$excludeFiles = @()) {
    if (Get-Command "robocopy.exe" -ErrorAction SilentlyContinue) {
        $rArgs = @($src, $dst, "/MIR")
        if ($excludeDirs.Count -gt 0) { $rArgs += @("/XD") + $excludeDirs }
        if ($excludeFiles.Count -gt 0) { $rArgs += @("/XF") + $excludeFiles }
        $rArgs += @("/NFL", "/NDL", "/NJH", "/NJS", "/nc", "/ns", "/np")
        & robocopy.exe @rArgs | Out-Null
    } else {
        if (-not (Test-Path $dst)) {
            New-Item -ItemType Directory -Path $dst -Force | Out-Null
        }
        Get-ChildItem -Path $src -Recurse | ForEach-Object {
            $rel = [System.IO.Path]::GetRelativePath($src, $_.FullName)
            $destPath = Join-Path $dst $rel
            $skip = $false
            foreach ($exDir in $excludeDirs) {
                if ($rel -split "[\\/]" -contains $exDir) { $skip = $true; break }
            }
            foreach ($exFile in $excludeFiles) {
                if ($_.Name -eq $exFile) { $skip = $true; break }
            }
            if (-not $skip) {
                if ($_.PSIsContainer) {
                    if (-not (Test-Path $destPath)) { New-Item -ItemType Directory -Path $destPath -Force | Out-Null }
                } else {
                    $parent = Split-Path $destPath -Parent
                    if (-not (Test-Path $parent)) { New-Item -ItemType Directory -Path $parent -Force | Out-Null }
                    Copy-Item -Path $_.FullName -Destination $destPath -Force
                }
            }
        }
        if (Test-Path $dst) {
            Get-ChildItem -Path $dst -Recurse | ForEach-Object {
                $rel = [System.IO.Path]::GetRelativePath($dst, $_.FullName)
                $srcPath = Join-Path $src $rel
                if (-not (Test-Path $srcPath)) {
                    Remove-Item -Path $_.FullName -Recurse -Force -ErrorAction SilentlyContinue
                }
            }
        }
    }
}

foreach ($skill in $backendSkills) {
    $srcSkillPath = Join-Path $localSkillsBase $skill
    $dstSkillPath = Join-Path $skillsTargetDir $skill

    if (Test-Path $srcSkillPath) {
        if ($DryRun) {
            Write-Host "  [SYNC] Would copy/update skill: $skill" -ForegroundColor Yellow
        } else {
            Invoke-MirrorDirectory $srcSkillPath $dstSkillPath @(".git", "node_modules", "__pycache__") @(".DS_Store", "desktop.ini", "Thumbs.db")
        }
        $copiedCount++
    } else {
        # Skill was removed or not found locally - prune from target repo if present
        if (Test-Path $dstSkillPath) {
            if ($DryRun) {
                Write-Host "  [PRUNE] Would delete skill from repo: $skill" -ForegroundColor Red
            } else {
                Write-Host "  [PRUNE] Deleting removed skill from repo: $skill" -ForegroundColor Red
                Remove-Item -Path $dstSkillPath -Recurse -Force
            }
            $prunedCount++
        }
    }
}

# Check for any rogue folders in repo/skills/ that are not part of backend-master list
if (Test-Path $skillsTargetDir) {
    $existingInRepo = Get-ChildItem -Directory $skillsTargetDir | Select-Object -ExpandProperty Name
    foreach ($repoSkill in $existingInRepo) {
        if ($backendSkills -notcontains $repoSkill) {
            $toRemove = Join-Path $skillsTargetDir $repoSkill
            if ($DryRun) {
                Write-Host "  [PRUNE-UNTRACKED] Would delete: $repoSkill" -ForegroundColor Red
            } else {
                Write-Host "  [PRUNE-UNTRACKED] Deleting untracked: $repoSkill" -ForegroundColor Red
                Remove-Item -Path $toRemove -Recurse -Force
            }
            $prunedCount++
        }
    }
}

Write-Host ""
Write-Host "Sync scan completed. Copied/Verified: $copiedCount | Pruned: $prunedCount" -ForegroundColor Green

if ($DryRun) {
    Write-Host "Dry run completed. No files were committed or pushed." -ForegroundColor Cyan
    return
}

# 2. Check Git status and commit/push
Set-Location $repoRoot
$status = git status --porcelain

if ([string]::IsNullOrWhiteSpace($status)) {
    Write-Host "No changes detected. Repository is fully up-to-date." -ForegroundColor Green
    return
}

Write-Host "Changes detected in repository:" -ForegroundColor Yellow
git status -s

if ($AutoPush) {
    git add -A
    if ([string]::IsNullOrWhiteSpace($CommitMessage)) {
        $timestamp = (Get-Date).ToString("yyyy-MM-dd HH:mm:ss")
        $CommitMessage = "sync: backend-master sub-skills ($timestamp)"
    }
    
    git commit -m $CommitMessage
    Write-Host "Pushing changes to origin/main..." -ForegroundColor Cyan
    git push origin main
    Write-Host "Successfully pushed changes to GitHub!" -ForegroundColor Green
}
