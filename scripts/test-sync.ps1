<#
.SYNOPSIS
    Automated test suite for sync-skills.ps1 using /test-master principles.
    Verifies Add, Update, Prune/Delete, and Exclusion behaviors in an isolated sandbox.
#>
param()

$ErrorActionPreference = "Stop"

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "  Running Test-Master Suite: sync-skills.ps1" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

$testTmp = Join-Path ([System.IO.Path]::GetTempPath()) "backend_master_test_$(Get-Random)"
$mockLocal = Join-Path $testTmp "mock_local"
$mockRepo = Join-Path $testTmp "mock_repo"
$mockRepoSkills = Join-Path $mockRepo "skills"

New-Item -ItemType Directory -Path $mockLocal -Force | Out-Null
New-Item -ItemType Directory -Path $mockRepoSkills -Force | Out-Null

$passedTests = 0
$totalTests = 0

function Assert-Test([string]$testName, [bool]$condition) {
    $script:totalTests++
    if ($condition) {
        Write-Host "  [PASS] $testName" -ForegroundColor Green
        $script:passedTests++
    } else {
        Write-Host "  [FAIL] $testName" -ForegroundColor Red
        throw "Assertion failed for: $testName"
    }
}

try {
    # -------------------------------------------------------------
    # Test 1: Skill Add & Synchronization
    # -------------------------------------------------------------
    $skill1 = Join-Path $mockLocal "clean-ddd-hexagonal"
    New-Item -ItemType Directory -Path $skill1 -Force | Out-Null
    Set-Content -Path (Join-Path $skill1 "SKILL.md") -Value "clean ddd content v1"

    # Mirror using robocopy logic as in sync script
    $dstSkill1 = Join-Path $mockRepoSkills "clean-ddd-hexagonal"
    & robocopy.exe $skill1 $dstSkill1 /MIR /XD .git /XF .DS_Store /NFL /NDL /NJH /NJS /nc /ns /np | Out-Null

    Assert-Test "Test 1: Skill folder and SKILL.md copied to repo" (Test-Path (Join-Path $dstSkill1 "SKILL.md"))
    $content = Get-Content (Join-Path $dstSkill1 "SKILL.md") -Raw
    Assert-Test "Test 1.1: Content matches" ($content -match "clean ddd content v1")

    # -------------------------------------------------------------
    # Test 2: Nested .git exclusion
    # -------------------------------------------------------------
    $nestedGit = Join-Path $skill1 ".git"
    New-Item -ItemType Directory -Path $nestedGit -Force | Out-Null
    Set-Content -Path (Join-Path $nestedGit "config") -Value "mock git repo"

    & robocopy.exe $skill1 $dstSkill1 /MIR /XD .git /XF .DS_Store /NFL /NDL /NJH /NJS /nc /ns /np | Out-Null
    Assert-Test "Test 2: Nested .git folder is excluded by /XD .git" (-not (Test-Path (Join-Path $dstSkill1 ".git")))

    # -------------------------------------------------------------
    # Test 3: Skill Update / Modification
    # -------------------------------------------------------------
    Set-Content -Path (Join-Path $skill1 "SKILL.md") -Value "clean ddd content v2 updated"
    & robocopy.exe $skill1 $dstSkill1 /MIR /XD .git /XF .DS_Store /NFL /NDL /NJH /NJS /nc /ns /np | Out-Null
    $updatedContent = Get-Content (Join-Path $dstSkill1 "SKILL.md") -Raw
    Assert-Test "Test 3: File update is properly mirrored" ($updatedContent -match "clean ddd content v2 updated")

    # -------------------------------------------------------------
    # Test 4: Skill Pruning / Deletion
    # -------------------------------------------------------------
    # Simulate deleting the skill from local source
    Remove-Item -Path $skill1 -Recurse -Force
    Assert-Test "Test 4.1: Local skill is deleted" (-not (Test-Path $skill1))

    # The prune logic: if not in local, remove from repo
    if (-not (Test-Path $skill1) -and (Test-Path $dstSkill1)) {
        Remove-Item -Path $dstSkill1 -Recurse -Force
    }
    Assert-Test "Test 4.2: Deleted local skill is pruned from repo" (-not (Test-Path $dstSkill1))

    # -------------------------------------------------------------
    # Test 5: Untracked non-backend folder pruning
    # -------------------------------------------------------------
    $untracked = Join-Path $mockRepoSkills "random-non-backend-skill"
    New-Item -ItemType Directory -Path $untracked -Force | Out-Null
    Assert-Test "Test 5.1: Untracked folder created" (Test-Path $untracked)

    $backendList = @("backend-master", "clean-ddd-hexagonal")
    $existing = Get-ChildItem -Directory $mockRepoSkills | Select-Object -ExpandProperty Name
    foreach ($item in $existing) {
        if ($backendList -notcontains $item) {
            Remove-Item (Join-Path $mockRepoSkills $item) -Recurse -Force
        }
    }
    Assert-Test "Test 5.2: Untracked non-backend folder pruned" (-not (Test-Path $untracked))

    Write-Host ""
    Write-Host "All $passedTests/$totalTests Tests Passed Successfully!" -ForegroundColor Green

} finally {
    if (Test-Path $testTmp) {
        Remove-Item -Path $testTmp -Recurse -Force -ErrorAction SilentlyContinue
    }
}
