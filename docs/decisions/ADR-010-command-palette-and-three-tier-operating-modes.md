# ADR-010: Action Command Palette and Three-Tier Operating Modes (`lite`, `full`, `ultra`)

## Status
Accepted

## Date
2026-10-15

## Context
As backend engineering tasks vary widely in scope, urgency, and technical depth, a single rigid execution mode causes friction:
1. **Micro-Tasks & Hotfixes**: Applying a multi-page trade-off exploration and extensive TDD ceremony to a 2-line SQL query fix or typo slows developers down.
2. **Major Feature Systems**: Conversely, rushing through complex data models or distributed sagas without architectural alternatives leads to costly rework.
3. **Refactoring & Tech Debt**: When cleaning up bloat, the agent needs an explicit mandate to delete code, collapse unnecessary wrappers, and eliminate premature abstractions.
4. **Targeted Backend Audits**: Developers frequently need specific health checks (e.g., OWASP security audits, performance profiling, hardening) without having to write long explanatory prompts.
5. **Chat Banner Clutter**: Displaying multi-line internal LTM and STM memory maps in every turn clutters the chat interface.

## Decision
Introduce a **Three-Tier Operating Mode System** and an **Action Command Palette** paired with a **Minimal Clean Status Banner**:

### 1. Three Operating Modes
- **`lite` Mode (`/backend-master lite`)**:
  - Designed for fast bugfixes, quick query tuning, micro-endpoints, single-file edits, or rapid iteration.
  - Compresses Phase 1 & 2 to a fast 1-line check (*"Proposed fix: X in file Y. Proceed?"*).
  - Minimal overhead, maximum speed, laser focus on immediate delivery.
- **`full` Mode (`/backend-master full` — Default)**:
  - Standard mode for production backend development, new service endpoints, and domain models.
  - Executes comprehensive Phase 1 exploration, 2–3 architectural trade-offs, strict Phase 2 Hard Stop, and Phase 3 TDD.
- **`ultra` Mode (`/backend-master ultra`)**:
  - Ponytail YAGNI extremist mode for technical debt cleanup and hotfixes.
  - Deletes dead code, strips single-impl interfaces and speculative factories, rejects third-party dependencies when standard libraries suffice, and refuses premature caching/queues.

### 2. Action Command Palette
Provide dedicated commands for high-frequency backend engineering workflows:
- `/backend-master audit`: Technical quality checks (OWASP API Top 10, SQLi, N+1 queries, pool/memory leaks, unhandled error paths).
- `/backend-master harden`: Defense-in-depth pass (input validation, rate limiting, JWT/auth verification, CORS/CSRF, RFC 7807 error envelopes, timeouts).
- `/backend-master optimize`: Performance tuning (slow query analysis, `EXPLAIN ANALYZE`, indexing strategy, cache-aside, pool sizing).
- `/backend-master benchmark`: Load and stress testing (generates & executes `k6` scripts, benchmarks p95/p99 latency and throughput).
- `/backend-master schema`: Database schema design, normalization, zero-downtime expand/contract migrations, non-blocking DDL.
- `/backend-master api`: Contract-first API modeling (REST, GraphQL, gRPC, WebSockets, OpenAPI specs, cursor pagination, idempotency).
- `/backend-master distill`: Ponytail YAGNI pruning pass (strip premature wrappers, single-impl interfaces, flatten classes into pure functions).
- `/backend-master critique`: Architectural review (bounded contexts, service coupling, distributed sagas, single points of failure).
- `/backend-master dockerize`: Container infrastructure (multi-stage Dockerfiles, Docker Compose mesh, non-root users, secret handling).
- `/backend-master document`: Generate or update backend documentation, ADRs, or API contracts from codebase.
- `/backend-master init`: Workspace discovery (detect framework, dependencies, databases, environment configs, and initialize LTM).
- `/backend-master status`: Displays current activation state, active mode, internal LTM stack, STM task, and loaded skills.

### 3. Minimal Clean Banner & Laser Focus Policy
- Turn banners are strictly kept to a clean single line:
  ```text
  ⚡ [backend-master: ACTIVE] [mode: full] Loaded: [<skill-1>, <skill-2>]
  ```
- **Internal Memory**: LTM and STM memory maps are managed internally within the conversational context and are **never printed in chat turns** unless explicitly requested via `/backend-master status`.
- **Anti-Hallucination**: The agent focuses strictly on ground truth in the codebase, eliminating fluff and unsolicited meta-commentary.

## Alternatives Considered

### Alternative 1: Freeform Natural Language Only (No Commands)
- **Pros**: Flexible.
- **Cons**: Requires developers to craft elaborate prompts for recurring tasks like audits or performance profiling.
- **Rejected**: Commands provide instant, repeatable shortcuts.

### Alternative 2: Verbose Chat Banners with Full LTM/STM Output
- **Pros**: High visibility into internal agent state.
- **Cons**: Clutters the conversation transcript, wastes tokens on repetitive dumps, and degrades readability.
- **Rejected**: Clean single-line banner is far superior; full state is accessible on-demand via `/backend-master status`.

## Consequences
- Streamlined user experience matching the clean command patterns of tools like `/impeccable`.
- Instant adaptation between fast lightweight edits (`lite`), rigorous standard engineering (`full`), and ruthless de-bloating (`ultra`).
- Zero chat clutter while preserving 100% of internal in-session memory capabilities.
