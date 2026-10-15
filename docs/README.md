# Backend-Master Documentation

Welcome to the technical documentation for **`Backend-Master`**, the universal backend engineering orchestrator and curated skill hub for AI coding agents.

---

## 📚 Documentation Map

1. **[System Architecture](ARCHITECTURE.md)**
   - Complete pipeline diagram and component breakdown.
   - Flow of intent classification, memory engine, skill routing, and execution gates.
   - Monorepo directory-aware routing and circuit breaker mechanics.

2. **[Architecture Decision Records (ADRs)](decisions/README.md)**
   - Historical and accepted technical records capturing the *why*, constraints, trade-offs, and alternatives considered for every major architectural choice:
     - [ADR-001: Universal Master Orchestrator Architecture & JIT Injection](decisions/ADR-001-universal-orchestrator-and-jit-injection.md)
     - [ADR-002: In-Session Memory Engine (Zero Disk Footprint, LTM vs. STM Dynamics)](decisions/ADR-002-in-session-memory-engine-ltm-stm.md)
     - [ADR-003: Polyglot Monorepo & Multi-Framework Dynamic Routing](decisions/ADR-003-polyglot-monorepo-and-multi-framework-routing.md)
     - [ADR-004: Mandatory Plan-Then-Execute Hard Gate (Phase 2 Hard Stop)](decisions/ADR-004-mandatory-plan-then-execute-hard-gate.md)
     - [ADR-005: Optional Codebase Token Optimization via Graft with Consent Gate](decisions/ADR-005-token-optimization-via-graft-with-user-consent.md)
     - [ADR-006: Autonomous Breakthrough Circuit Breaker (Unlazy Escalation)](decisions/ADR-006-autonomous-breakthrough-circuit-breaker-unlazy.md)
     - [ADR-007: Zero-Hassle Transparent Proxy & Fluid Multi-Stage Workflow](decisions/ADR-007-zero-hassle-transparent-proxy-and-multi-stage-workflow.md)
     - [ADR-008: Ponytail YAGNI Engineering Discipline Integration](decisions/ADR-008-ponytail-yagni-discipline-integration.md)
     - [ADR-009: Self-Contained Curated Skill Replicas & Automated Upstream Tracking](decisions/ADR-009-standalone-curated-skill-replicas-and-upstream-tracking.md)

3. **[References & Upstream Attribution](../REFERENCES.md)**
   - Upstream repository sources, authors, licenses, and mapping of all 73 curated sub-skills.

4. **[Primary Skill Specification](../SKILL.md)**
   - Formal specification following the agentskills.io format with trigger-only frontmatter description.

---

## 🤖 Instructions for AI Agents & Engineers

- **Document the *Why*, Not Just the Code**: When introducing architectural changes or modifying core behavior, author a new ADR in `docs/decisions/` using the established format.
- **Maintain In-Session Memory**: Never write temporary session state files to user project directories.
- **Respect User Permission**: Never install or download external tools (like Graft) without asking first.
