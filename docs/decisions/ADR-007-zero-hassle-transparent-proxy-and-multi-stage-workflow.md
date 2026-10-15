# ADR-007: Zero-Hassle Transparent Proxy & Fluid Multi-Stage Workflow

## Status
Accepted

## Date
2026-10-15

## Context
In typical modular AI tooling, developers are burdened with managing tools and skills manually:
1. Finding which skill corresponds to which task among dozens of options.
2. Manually triggering skill invocations when moving from writing an API to configuring Docker, or from writing SQL to running a load test.
3. Rigid, dogmatic gating that treats a 2-line typo fix with the same bureaucratic ceremony as a multi-datacenter database migration.

This cognitive burden defeats the primary value of AI assistance, creating friction and slowing down developers.

## Decision
Design `Backend-Master` as a **Zero-Hassle Transparent Proxy with Fluid Multi-Stage Progression**:

1. **Transparent Proxy Principle**:
   - The developer interacts entirely in natural plain English (or provides code, logs, and traces).
   - `Backend-Master` silently resolves domain entities (e.g. Postgres $\rightarrow$ `postgres-pro`, Fastify $\rightarrow$ `fastify-best-practices`, Docker $\rightarrow$ `docker-patterns`, k6 $\rightarrow$ `k6`).
   - The developer never has to search, load, or configure sub-skills manually.
2. **"Work Through All of the Things" (Fluid Multi-Stage Progression)**:
   - When a project moves through consecutive engineering stages:
     - Stage 1: Schema & Migrations (`postgres-pro`, `database-migration`)
     - Stage 2: APIs & Authentication (`fastify-best-practices`, `auth`)
     - Stage 3: Event Streams & Caching (`kafka-development`, `redis-patterns`)
     - Stage 4: Containerization & Deployment (`docker-patterns`, `devops-engineer`)
     - Stage 5: Load Testing & Benchmarking (`k6`, `performance-optimization`)
   - The orchestrator **automatically rotates active skills in STM** as the conversation progresses, retaining established project architecture in LTM.
   - The engineer never has to say "switch skill to k6"—the orchestrator detects the new phase and loads the right specialist seamlessly.
3. **Adaptive Gating (Flexible, Not Bureaucratic)**:
   - **Quick Fixes & Bug Traces (Bounded / Hotfix)**: Phase 1 & 2 verification is fast and crisp (1–2 sentences in chat: *"Root cause: X; proposed fix: Y in file Z. Ready to proceed?"*).
   - **Major Architectural Shifts (Architectural)**: Deep trade-off analysis comparing 2–3 options.
   - Adapts to the developer's velocity and task complexity.

## Alternatives Considered

### Alternative 1: Strict Single-Domain Scope per Session
- **Pros**: Clear boundaries.
- **Cons**: Frustrating developer experience; requires restarting or re-invoking the agent every time work moves from code to deployment or testing.
- **Rejected**: Development is an interconnected, multi-stage workflow.

### Alternative 2: Manual Skill Loading Commands (`/load <skill>`)
- **Pros**: Gives explicit control to the user.
- **Cons**: Forces the user to memorize 73 skill names and manage their lifecycle manually.
- **Rejected**: Direct contradiction of zero-hassle assistance.

## Consequences
- Completely effortless developer experience: zero skill searching, zero manual loading.
- Natural flow across the entire software development lifecycle (DB $\rightarrow$ API $\rightarrow$ Docker $\rightarrow$ k6).
- Scalable gating that provides safety without unnecessary red tape.
