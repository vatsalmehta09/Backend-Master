# ADR-009: Self-Contained Curated Skill Replicas and Automated Upstream Tracking

## Status
Accepted

## Date
2026-10-15

## Context
A master orchestrator managing 70+ specialized skills faces two major distribution challenges:
1. **Runtime Dependency Fragility**: If the orchestrator fetches skills dynamically from the internet at runtime via git clone or curl, network failures, rate limiting, or deleted upstream repositories will break the agent during critical workflows.
2. **Upstream Drift & Silent Breakage**: If upstream repositories change their frontmatter formats, delete files, or introduce incompatible conventions, downstream users will experience silent bugs.
3. **Air-Gapped / Offline Environments**: Developers frequently work offline, behind corporate firewalls, or in secure environments where dynamic git cloning is restricted.

## Decision
Maintain **Self-Contained Standalone Replicas** inside the repository alongside **Automated Deterministic Upstream Tracking**:

1. **Self-Contained Replicas in `skills/`**:
   - Complete, verified copies of all 73 curated sub-skills are housed directly in `skills/` with zero missing dependencies or external runtime calls.
   - Any agent platform (Claude, Cursor, Codex, Gemini, Antigravity) can mount the repository directly and function immediately.
2. **Upstream Lockfile (`upstream-lock.json`)**:
   - A deterministic JSON manifest tracking:
     - 19 upstream Git repository sources.
     - Specific pinned commit SHAs.
     - Exact list of skills provided by each source.
     - Total managed skills count (verified in CI).
3. **Automated Synchronization & Verification Tooling**:
   - `scripts/sync-skills.ps1`: Deterministically mirrors additions, updates, and prunes from sources.
   - `scripts/check-updates.ps1`: Compares tracked commit SHAs against live upstream remotes and flags available updates.
   - `scripts/test-sync.ps1`: Automated regression test suite verifying add, update, prune, and exclusion behaviors.
4. **Cross-Platform CI Gate**:
   - Runs on `ubuntu-latest` in GitHub Actions using platform-agnostic PowerShell (`Invoke-MirrorDirectory`).
   - Validates all frontmatters and ensures `upstream-lock.json` integrity on every commit and PR.

## Alternatives Considered

### Alternative 1: Dynamic Git Submodules
- **Pros**: Native Git tracking.
- **Cons**: Clunky UX, complex recursive cloning steps, frequently causes git conflicts and detached HEAD states for users.
- **Rejected**: Submodules create excessive friction for skill packs.

### Alternative 2: Runtime On-Demand Downloads
- **Pros**: Minimal repository size.
- **Cons**: Fails completely in offline/air-gapped setups; prone to network timeouts and breaking upstream changes.
- **Rejected**: Unreliable for production workflows.

## Consequences
- Guaranteed zero-dependency, out-of-the-box functionality in any environment.
- Complete auditability and reproducibility through `upstream-lock.json`.
- Continuous, verified drift detection via automated CI/CD pipelines.
