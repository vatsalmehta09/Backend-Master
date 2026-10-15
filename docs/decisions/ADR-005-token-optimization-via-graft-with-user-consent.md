# ADR-005: Optional Codebase Token Optimization via Graft with Mandatory User Consent Gate

## Status
Accepted

## Date
2026-10-15

## Context
When an AI agent explores large backend codebases (e.g. tracing call hierarchies, locating class definitions, mapping API routes), reading whole files via standard tools consumes large numbers of tokens and clutters the conversation transcript.

`graft` MCP tools (`graft_find_code`, `graft_trace_calls`, `graft_file_api`, `graft_repo_map`) provide token-optimized structural code queries. However:
1. Not all environments have `graft` installed or configured.
2. Automatically installing tools, running installers, or cloning external repositories without human consent violates user trust, security policies, and workspace boundaries.
3. Some developers prefer standard grep/file viewing tools or work in restricted offline environments.

## Decision
Incorporate `graft` strictly as an **Optional Recommendation with a Mandatory User Permission Gate**:

1. **Check Availability**:
   - During Phase 1 (Context Exploration), check if `graft` tools are natively present in the environment.
   - If already present, utilize them for token savings.
2. **Strict Consent Gate Before Installation**:
   - If `graft` is not installed, the agent may suggest it to the user as a token optimization option.
   - **MANDATORY GATE**: The agent **MUST explicitly ask the user for permission before downloading or installing graft**. It must NEVER download, clone, or install `graft` autonomously.
3. **Graceful Fallback**:
   - If the user declines or ignores the recommendation, the agent must immediately let it go and seamlessly proceed using standard file viewing and grep tools with zero complaints or blockers.

## Alternatives Considered

### Alternative 1: Auto-Install Graft Automatically
- **Pros**: Ensures token optimization is always active.
- **Cons**: High security risk; executing unexpected package installations or downloads without user consent violates trust and may fail in corporate environments.
- **Rejected**: User permission is non-negotiable.

### Alternative 2: Mandatory Requirement (Refuse to work without Graft)
- **Pros**: Forces minimal token usage.
- **Cons**: Severe usability barrier; renders the skill unusable on standard machines without pre-installed MCP servers.
- **Rejected**: Skills must remain usable out of the box with zero external dependencies.

## Consequences
- Preserves full user control over their machine and network activity.
- Delivers significant token savings when approved and available.
- Zero friction or degradation when `graft` is absent or rejected.
