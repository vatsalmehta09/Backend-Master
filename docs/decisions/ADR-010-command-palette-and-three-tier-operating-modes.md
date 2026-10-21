# ADR-010: Action Command Palette, Three-Tier Operating Modes, and Backend Anti-Patterns

## Status
Accepted

## Date
2026-10-15 (Updated 2026-10-21)

## Context
As backend engineering tasks vary widely in scope, urgency, and technical depth, a single rigid execution mode causes friction:
1. **Micro-Tasks & Hotfixes**: Applying a multi-page trade-off exploration and extensive TDD ceremony to a 2-line SQL query fix or typo slows developers down.
2. **Major Feature Systems**: Conversely, rushing through complex data models or distributed sagas without architectural alternatives leads to costly rework.
3. **Refactoring & Tech Debt**: When cleaning up bloat, the agent needs an explicit mandate to delete code, collapse unnecessary wrappers, and eliminate premature abstractions.
4. **Targeted Backend Audits**: Developers frequently need specific health checks (e.g., OWASP security audits, performance profiling, hardening) without having to write long explanatory prompts.
5. **AI Backend Slop**: Coding agents frequently commit N+1 queries, unparameterized SQL strings, event-loop blocking calls, and unhandled errors without hardcoded anti-patterns.
6. **Chat Banner Clutter**: Displaying multi-line internal LTM and STM memory maps in every turn clutters the chat interface.

## Decision
Introduce a **Three-Tier Operating Mode System**, an **Action Command Palette** with optional target arguments (`/backend-master <command> [target]`), hardcoded **7 Backend Anti-Patterns**, and a **Minimal Clean Status Banner**:

### 1. Three Operating Modes
- **`lite` Mode (`/backend-master lite`)**:
  - Designed for fast bugfixes, quick query tuning, micro-endpoints, single-file edits, or rapid iteration.
  - Compresses Phase 1 & 2 to a fast 1-line check (*"Proposed fix: X in file Y. Proceed?"*).
  - Minimal overhead, maximum speed, laser focus on immediate delivery.
- **`full` Mode (`/backend-master full` — Default)**:
  - Standard mode for production backend development, new service endpoints, domain models, and schema migrations.
  - Executes comprehensive Phase 1 exploration, 2–3 architectural trade-offs, strict Phase 2 Hard Stop, and Phase 3 TDD with clean architecture.
- **`ultra` Mode (`/backend-master ultra`)**:
  - Ponytail YAGNI extremist mode for technical debt cleanup and bloat elimination.
  - Deletes dead code, strips single-impl interfaces and speculative factories, rejects third-party dependencies when standard libraries suffice, and refuses premature caching/queues.

### 2. Action Command Palette (`/backend-master <command> [target]`)
Provide dedicated action commands taking an optional `[target]` parameter:
- `/backend-master init`: Project inspection & setup: detects frameworks, DBs, ORMs, and initializes durable `BACKEND.md`.
- `/backend-master audit [target]`: Codebase sweep: OWASP Top 10, N+1 queries, unhandled errors, connection pool leaks, dead code.
- `/backend-master diagnose [target]`: Root-cause a specific bug, crash, or failing test: stack trace analysis, log triage, fault isolation.
- `/backend-master profile [target]`: Quantitative performance breakdown: slow queries (`EXPLAIN ANALYZE`), CPU hotspots, pool contention.
- `/backend-master scaffold [target]`: Generate clean service, router, handler, or module boilerplate with opinionated boundaries.
- `/backend-master schema [target]`: Relational or document schema design, normalization, zero-downtime expand/contract migrations, non-blocking DDL.
- `/backend-master api [target]`: Contract-first API modeling: OpenAPI 3.1 specs, Protocol Buffers IDL, GraphQL SDL, cursor pagination, idempotency keys.
- `/backend-master integrate [target]`: Inter-service messaging & workflows: Kafka topics, RabbitMQ exchanges/DLX, Temporal sagas, WebSocket rooms.
- `/backend-master harden [target]`: Defense-in-depth: rate limiting, CORS/CSRF, JWT/OIDC auth guards, RFC 7807 error envelopes, timeouts, RLS.
- `/backend-master pentest [target]`: Active red-team probe: simulates attack payloads (SQLi, BOLA/IDOR, SSRF, broken auth, input fuzzing).
- `/backend-master test [target]`: Scaffold unit & integration test suites, mock strategies, database fixtures, and coverage audits.
- `/backend-master loadtest [target]`: Generate & execute k6 load/stress tests: measure throughput ceilings, p95/p99 latency, breaking points.
- `/backend-master optimize [target]`: Targeted performance fixes: composite indexing, query rewrites, Redis cache-aside, connection pool tuning.
- `/backend-master containerize [target]`: Production container infrastructure: multi-stage Dockerfiles, Docker Compose meshes, unprivileged users, healthchecks.
- `/backend-master observe [target]`: Vendor-neutral observability: OpenTelemetry traces/spans, Prometheus RED/USE metrics, structured JSON logging.
- `/backend-master status`: Displays current activation state, active mode, internal LTM stack, STM task, and loaded skills.
- `/backend-master off`: Deactivates persistent mode; returns to default model behavior.

### 3. The 7 Backend Anti-Patterns Contract
1. 🚫 **No N+1 Queries**: Never query a database inside a loop.
2. 🚫 **No Unparameterized SQL**: Zero string interpolation in queries; bind parameters mandatory.
3. 🚫 **No Event-Loop Blocking**: Zero synchronous blocking I/O calls inside async handlers.
4. 🚫 **No Unbounded Pagination**: Forbid `SELECT *` without explicit `LIMIT`.
5. 🚫 **No Silent Error Swallowing**: Ban empty catch blocks; mandate RFC 7807 Problem Details.
6. 🚫 **No Hardcoded Secrets**: Mandate environment variable injection.
7. 🚫 **No Table-Locking Migrations**: Forbid destructive blocking DDL on active tables; enforce expand-and-contract.

### 4. Minimal Clean Banner & Laser Focus Policy
- Turn banners are strictly kept to a clean single line:
  ```text
  ⚡ [backend-master: ACTIVE] [mode: full] Loaded: [<skill-1>, <skill-2>]
  ```
- **Internal Memory**: LTM and STM memory maps are managed internally within the conversational context and are **never printed in chat turns** unless explicitly requested via `/backend-master status`.
- **Anti-Hallucination**: The agent focuses strictly on ground truth in the codebase, eliminating fluff and unsolicited meta-commentary.

## Consequences
- Streamlined developer experience matching the clean command patterns of tools like `/impeccable`.
- Instant adaptation between fast lightweight edits (`lite`), rigorous standard engineering (`full`), and ruthless de-bloating (`ultra`).
- Zero chat clutter while preserving 100% of internal in-session memory capabilities.
- Concrete anti-pattern enforcement preventing common AI backend vulnerabilities and architectural flaws.
