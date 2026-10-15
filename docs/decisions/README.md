# Architecture Decision Records (ADRs)

This directory documents the foundational architectural and design decisions for **`Backend-Master`**.

## Decision Index

| ADR | Title | Status | Date | Summary |
|---|---|---|---|---|
| [ADR-001](ADR-001-universal-orchestrator-and-jit-injection.md) | Universal Master Orchestrator Architecture and Just-in-Time (JIT) Skill Injection | **Accepted** | 2026-10-14 | Enforces selective loading of $\le 3$ relevant skills to prevent context window bloat while providing broad backend coverage. |
| [ADR-002](ADR-002-in-session-memory-engine-ltm-stm.md) | In-Session Memory Engine (Zero Disk Footprint, LTM vs. STM Dynamics) | **Accepted** | 2026-10-15 | Maintains memory purely in session context (zero disk clutter), separating high-inertia LTM from volatile rolling-window STM. |
| [ADR-003](ADR-003-polyglot-monorepo-and-multi-framework-routing.md) | Polyglot Monorepo and Multi-Framework Dynamic Routing | **Accepted** | 2026-10-15 | Dynamically routes framework specialists based on directory context (`services/*`) without locking projects to a single framework. |
| [ADR-004](ADR-004-mandatory-plan-then-execute-hard-gate.md) | Mandatory Plan-Then-Execute Hard Gate (Phase 2 Hard Stop) | **Accepted** | 2026-10-15 | Strictly mandates human verification before code generation, backed by a rationalization counter-table and red flag checks. |
| [ADR-005](ADR-005-token-optimization-via-graft-with-user-consent.md) | Optional Codebase Token Optimization via Graft with Mandatory User Consent Gate | **Accepted** | 2026-10-15 | Offers Graft as an optional token-saving tool for code exploration, with an absolute requirement to ask user permission before downloading. |
| [ADR-006](ADR-006-autonomous-breakthrough-circuit-breaker-unlazy.md) | Autonomous Breakthrough Circuit Breaker (Unlazy Escalation Protocol) | **Accepted** | 2026-10-15 | Keeps deep verification dormant by default, escalating to strict `GATES.md` verification only when stalled, looping, or explicitly commanded. |
| [ADR-007](ADR-007-zero-hassle-transparent-proxy-and-multi-stage-workflow.md) | Zero-Hassle Transparent Proxy & Fluid Multi-Stage Workflow | **Accepted** | 2026-10-15 | Eliminates skill hunting; automatically rotates STM skills as a task moves through DB $\rightarrow$ API $\rightarrow$ Queue $\rightarrow$ Docker $\rightarrow$ Testing. |
| [ADR-008](ADR-008-ponytail-yagni-discipline-integration.md) | Ponytail YAGNI Engineering Discipline Integration | **Accepted** | 2026-10-14 | Integrates Ponytail YAGNI pruning, dynamically switching between normal clean architecture and ultra-minimalist code pruning. |
| [ADR-009](ADR-009-standalone-curated-skill-replicas-and-upstream-tracking.md) | Self-Contained Curated Skill Replicas and Automated Upstream Tracking | **Accepted** | 2026-10-15 | Houses self-contained copies of 73 skills in `skills/`, tracks 19 sources in `upstream-lock.json`, and verifies integrity in CI. |

## ADR Lifecycle

```
PROPOSED → ACCEPTED → (SUPERSEDED or DEPRECATED)
```

- **Historical Record**: Past ADRs are never deleted; they document the context and constraints of past decisions.
- **Superseding**: When an architectural decision evolves, a new ADR is written that explicitly links to and supersedes the older record.
