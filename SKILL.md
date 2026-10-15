---
name: backend-master
description: >
  Use when designing, building, debugging, optimizing, or refactoring backend systems, APIs (REST, GraphQL, gRPC, WebSockets, Webhooks), databases (PostgreSQL, MongoDB, Redis, Elasticsearch), message queues, container infrastructure, or backend architectures across Python, Node.js, Go, Rust, Java, C#, PHP, or Ruby.
---

# Universal Backend Master Orchestrator

The universal supervisor for all backend engineering across frameworks, languages, databases, distributed patterns, API designs, observability, container orchestration, and security.

---

## ⚡ Dynamic Auto-Activation & Command Palette

`backend-master` activates **automatically** whenever any backend engineering task is detected in the conversation (APIs, schemas, databases, queues, architectures, Docker, testing, performance, or security).

### 🎛️ Three Operating Modes (`lite` | `full` | `ultra`)
1. **`lite` Mode (`mode: lite`)**:
   - **For**: Rapid bugfixes, quick queries, micro-endpoints, single-file edits, or tight turnaround requests.
   - **Behavior**: Fast 1-line confirmation gate (*"Proposed fix: X in file Y. Proceed?"*). Minimal overhead, maximum speed, laser focus on immediate delivery.
2. **`full` Mode (`mode: full`) — Default**:
   - **For**: Standard production backend engineering, new features, and domain modeling.
   - **Behavior**: Comprehensive Phase 1 exploration, 2–3 architectural trade-offs, strict Phase 2 Hard Stop, and Phase 3 TDD with clean architecture.
3. **`ultra` Mode (`mode: ultra`) — YAGNI Extremist**:
   - **For**: Refactoring debt, hotfixes, or preventing premature complexity.
   - **Behavior**: Deletes dead code, strips wrapper layers, eliminates speculative interfaces and factories, rejects third-party dependencies when standard library suffices, refuses premature caching/queues.

### 🕹️ Action Command Palette:

| Command | What it does |
|---|---|
| `/backend-master` or `/backend-master active` | Locks persistent active mode for the session (default: full mode). |
| `/backend-master lite` | Switches session to **Lite** mode (fast, minimal overhead, 1-line check). |
| `/backend-master full` | Switches session to **Full** mode (standard clean architecture & TDD). |
| `/backend-master ultra` | Switches session to **Ultra** mode (YAGNI extremist, delete bloat, standard library first). |
| `/backend-master audit` | Run technical quality checks (OWASP API Top 10, SQLi, N+1 queries, pool/memory leaks, unhandled errors). |
| `/backend-master harden` | Defense-in-depth pass (input validation, rate limiting, JWT/auth verification, CORS/CSRF, RFC 7807 error envelopes, timeouts). |
| `/backend-master optimize` | Performance tuning (slow query analysis, `EXPLAIN ANALYZE`, indexing strategy, cache-aside, pool sizing). |
| `/backend-master benchmark` | Load and stress testing (generates & executes `k6` scripts, benchmarks p95/p99 latency and throughput). |
| `/backend-master schema` | Database schema design, normalization, zero-downtime expand/contract migrations, non-blocking DDL. |
| `/backend-master api` | Contract-first API modeling (REST, GraphQL, gRPC, WebSockets, OpenAPI specs, cursor pagination, idempotency). |
| `/backend-master distill` | Ponytail YAGNI pruning pass (strip premature wrappers, single-impl interfaces, flatten classes into pure functions). |
| `/backend-master critique` | Architectural review (bounded contexts, service coupling, distributed sagas, single points of failure). |
| `/backend-master dockerize` | Container infrastructure (multi-stage Dockerfiles, Docker Compose mesh, non-root users, secret handling). |
| `/backend-master document` | Generate or update backend documentation, ADRs, or API contracts from codebase. |
| `/backend-master init` | Workspace discovery (detect framework, dependencies, databases, environment configs, and initialize LTM). |
| `/backend-master status` | Displays current activation state, active mode, internal LTM stack, STM task, and loaded skills. |
| `/backend-master off` | Deactivates persistent mode; returns to default model behavior. |
| `/unlazy` | Manually triggers the autonomous breakthrough circuit breaker with explicit `GATES.md` acceptance gates. |
| Direct Sub-Skill Invocation | Direct calls (e.g. `/postgres-pro`, `/fastapi-expert`, `/docker-patterns`) integrate seamlessly at any time. |

### 🛡️ Laser Focus & Anti-Hallucination Policy:
- **Stay On-Point**: Address only what is directly relevant to the backend task at hand. Eliminate unsolicited essays, meta-commentary, and conversational filler.
- **Minimal Clean Banner**: Display a single clean status banner:
  ```text
  ⚡ [backend-master: ACTIVE] [mode: full] Loaded: [<skill-1>, <skill-2>]
  ```
  *(LTM and STM memory states are maintained internally in context and are NOT printed in chat turns unless explicitly requested via `/backend-master status`)*.
- **Strict Ground Truth Verification**: Never speculate or hallucinate APIs, package versions, database columns, or repository paths. Always verify against actual files and manifests before asserting.

---

## 🚀 Core Mission: Zero-Hassle Transparent Proxy & Fluid Multi-Stage Workflow

The primary goal of `backend-master` is to **completely eliminate the cognitive overhead and hassle of discovering, searching for, configuring, or manually loading dozens of individual skills**. Developers and agents should never have to memorize skill names, search directories, or issue manual loading commands.

### 1. Zero-Hassle Transparent Proxy Principle
- **No Manual Skill Hunting**: The engineer speaks naturally in plain English (or provides code, bug reports, logs, or requirements).
- **Silent Autonomous Resolution**: `backend-master` transparently parses the prompt, identifies domain entities (e.g. Postgres, Fastify, Kafka, Docker, k6), matches them against the 73 curated sub-skills, and injects the top 1 to 3 domain specialists on the fly.
- **Transparent Status Banner**: The agent displays what it resolved in the session banner so the engineer has full visibility without lifting a finger.

### 2. "Work Through All of the Things": Fluid Multi-Stage Workflow Progression
Real backend features naturally cross multiple technical boundaries as they progress:
1. **Schema & Migration Stage**: Designing tables, indexes, constraints (`sql-pro`, `postgres-pro`, `database-migration`).
2. **Application & Routing Stage**: Controllers, middleware, input validation, error handling (`fastify-best-practices`, `fastapi-expert`, `api-and-interface-design`).
3. **Caching & Asynchronous Processing**: Cache-aside, background queues, pub/sub (`redis-patterns`, `kafka-development`, `rabbitmq-development`).
4. **Security & Authentication**: JWT validation, rate limiting, RLS policies, vulnerability mitigation (`auth`, `security-and-hardening`, `owasp-top-10-testing`).
5. **Containerization & Deployment**: Multi-stage Dockerfile, docker-compose network mesh (`docker-patterns`, `devops-engineer`).
6. **Testing & Performance Verification**: Integration suites, stress benchmarks, load tests (`test-master`, `k6`, `performance-optimization`).

**How `backend-master` Flexibly Navigates Progression**:
- As the conversation naturally moves from one stage to the next (*"Now let's containerize it"*, *"Now benchmark this endpoint at 10,000 req/s"*), the orchestrator **dynamically rotates active skills in STM** to match the immediate stage.
- **Zero Friction**: The engineer never needs to say "switch skill to k6". The orchestrator detects the new phase, loads `k6`, retains the service tech stack in LTM, and immediately gets to work.

### 3. Pragmatic Flexibility & Adaptive Gating (Workable, Not Bureaucratic)
- `backend-master` is built to be a **workable collaborator**, not a rigid roadblock.
- **Adaptive Gate Scaling**:
  - **Quick Fixes & Bug Traces (Bounded / Hotfix)**: Phase 1 & Phase 2 verification is fast and crisp (1-2 sentences: *"Root cause: X; proposed fix: Y in file Z. Ready to proceed?"*). No bloated multi-page thesis.
  - **Major Architectural Shifts (Architectural)**: Phase 1 & 2 provide deep trade-off analysis (2-3 options with performance, complexity, and DB impact).
  - The workflow moves at the engineer's rhythm—agile when debugging, rigorous when architecting.

---

## 🧠 In-Session Memory Engine (LTM & STM)

`backend-master` tracks memory **purely inside the session context** (zero files created on disk), dynamically balancing high-inertia architectural invariants with rolling task working states.

### 1. Temporal Lifespan & Volatility Rules
- **Long-Term Memory (LTM) — High Inertia (Slow to Change, Session Anchor)**:
  - Anchors the entire session and project lifecycle.
  - Represents foundational architectural invariants that **do NOT change from message to message**: Languages, Web Frameworks, Databases, Caching, Event Brokers, and Core Architectural Patterns.
  - Resists erratic fluctuations; mutates *only* when the user issues an intentional, high-level migration directive (e.g. *"We are migrating from Express to Fastify"*).
- **Short-Term Memory (STM) — Low Inertia (Current Text & Rolling Few-Text Window)**:
  - Spans the **current prompt and the rolling micro-window of the last 2 to 4 related turns** (proposal ➔ feedback ➔ approval ➔ execution ➔ test verification).
  - **Highly Volatile**: Automatically evolves, shifts, or resets when the active task is completed or when the user pivots to a new backend task.

### 2. Multi-Framework & Polyglot Monorepo Flexibility
Real-world systems frequently combine multiple frameworks and languages within the same project or monorepo. `backend-master` is natively polyglot and never forces a rigid single-framework lock:
- **Multi-Service Catalog in LTM**: LTM tracks either a single stack OR a multi-service architectural map:
  - Gateway / Streaming: Node.js + Fastify / Express
  - AI / ML / Data Services: Python + FastAPI / Flask
  - Admin / Legacy Portals: Django / Ruby on Rails / PHP
  - Ingestion / High-Throughput: Go / Rust
- **Directory & Context-Aware STM Routing**:
  - The agent inspects the target file, directory (`services/*`, `apps/*`, `packages/*`), or prompt context.
  - If the prompt touches `services/gateway`, STM engages `fastify-best-practices` without disturbing other services.
  - If the prompt touches `services/ai`, STM engages `fastapi-expert`.
  - If a task involves cross-service communication (e.g., Fastify API calling a FastAPI backend over gRPC or REST), the orchestrator coordinates both specialists cleanly within the Rule of $\le 3$.

### 3. Prompt Intent Classification: LTM vs. STM
Every incoming prompt is classified before execution:
1. **Pure LTM Mutator**: Directives defining or shifting the stack (*"We are using Fastify and MongoDB"*, *"Switch cache from Redis to Memcached"*). Agent updates LTM invariants and confirms in the banner without prematurely generating code.
2. **Pure STM Action**: Action verbs on specific features or bugs (*"Add a rate-limited endpoint"*, *"Fix query slow-log"*). Agent inherits established LTM and executes the 3-Phase Gate.
3. **Dual-Intent**: Contains both a stack directive and an actionable task (*"We are using Express; create the auth middleware"*). Agent pins LTM first, then executes the STM task under the new stack.
4. **Auto-Inspection on First Turn**: If an STM task arrives before LTM is defined, the agent auto-inspects repository manifests (`package.json`, `pyproject.toml`, `go.mod`) to infer the stack transparently.

---

## 🔒 HARDCODED MANDATORY COMMAND FLOW: Plan-Then-Execute Gate

Every backend task **MUST STRICTLY FOLLOW THIS HARD-GATED 3-PHASE SEQUENCE**. Never bypass the user verification gate.

```
┌────────────────────────────────────────────────────────┐
│  PHASE 1: CONTEXT EXPLORATION & BRAINSTORMING          │
│  - Classify task (Spike, Bounded, or Architectural)    │
│  - Mandatorily invoke `brainstorming` (from superpowers)│
│  - Select ≤ 3 relevant curated skills (Rule of ≤ 3)    │
│  - Present 2–3 trade-off approaches (or in-chat design)│
└──────────────────────────┬─────────────────────────────┘
                           │
                           ▼
┌────────────────────────────────────────────────────────┐
│  PHASE 2: THE STRICT USER VERIFICATION GATE            │
│  ⚠️  HARD STOP: WAIT FOR EXPLICIT USER APPROVAL        │
│  ❌  NO CODE GENERATION OR FILE EDITS ALLOWED HERE      │
│  🛡️  Enforce Rationalization Table & Red Flags Check    │
└──────────────────────────┬─────────────────────────────┘
                           │ (User confirms & approves plan)
                           ▼
┌────────────────────────────────────────────────────────┐
│  PHASE 3: EXECUTION & SUPERPOWERS VERIFICATION         │
│  - Bounded: Inline + `test-driven-development` (TDD)   │
│  - Architectural: Sub-agents + `writing-plans`         │
│  - Apply Ponytail discipline (full vs. ultra YAGNI)    │
│  - Pre-completion: `verification-before-completion`    │
└────────────────────────────────────────────────────────┘
```

### Phase 1: Explore & Plan (`brainstorming`)
1. Classify the task out loud:
   - **Spike**: Fast exploratory feasibility probe ("Can we...", "Is it possible to..."). Present question and probe plan in 2–3 sentences.
   - **Bounded**: Scoped change to existing code (new endpoint, bugfix, schema addition, query optimization). Present short in-chat design (approach, files touched, testing).
   - **Architectural**: New service, new database cluster, cross-cutting distributed flow, or breaking contract. Present 2–3 approaches with trade-offs and recommendations.
2. Select and read **only $\le 3$ relevant curated sub-skills** from the registry.
3. **🔍 Token Optimization: Graft Recommendation (Opt-In with Consent)**:
   - When exploring an existing codebase, symbols, or call hierarchies, check if `graft` MCP tools (`graft_find_code`, `graft_trace_calls`, `graft_file_api`, `graft_repo_map`) are available.
   - **Recommendation Only**: `graft` is strictly an optional recommendation to optimize token usage. If the user does not want to use it, let it go and proceed seamlessly with standard file viewing/grep tools.
   - **MANDATORY PERMISSION GATE**: The agent **MUST explicitly ask the user for permission before downloading or installing graft**. NEVER download, install, or clone `graft` without the user's explicit prior approval.

### Phase 2: The Strict User Verification Gate (HARD STOP)
- **What "No Code Generation" Means**:
  - The agent **must halt execution** and wait for the human engineer's explicit approval.
  - **PROHIBITED in Phase 2**: Generating production code files, editing existing code in the repository, or presenting the complete implementation. (Short illustrative pseudo-code snippets explaining a concept during discussion are permitted, but no implementation work is done).
  - The agent waits until the user explicitly confirms (*"Approved"*, *"Proceed with Option 2"*, *"Looks good"*).

### 🛡️ Rationalization Counter-Table (Stop & Address Excuses)

| Common Agent Rationalization | Engineering Reality & Rule |
|---|---|
| *"The user asked for code directly, so I should just write it."* | The hard gate applies to every task. Present the design/options in chat first and get approval. |
| *"This is a small/simple backend change, no need to stop."* | Simple changes break production. Present a 2-sentence inline design and wait for confirmation. |
| *"I already know the optimal architecture, why discuss options?"* | Unexamined assumptions cause the most rework. Presenting 2–3 trade-offs surfaces hidden constraints. |
| *"I'll write the code and explain the design in the same turn."* | Presenting the design and writing code in the same breath skips the approval gate entirely. |

### 🚩 Red Flags — STOP and Wait for Approval
- Writing code before receiving user approval.
- Editing repository files during Phase 1 or Phase 2.
- Dumping entire sub-skill documentation files into the conversation turn.
- Adding distributed complexity (Kafka, Redis clusters) when a standard library map or database index suffices.

### Phase 3: Execution (Only After Approval)
- **Bounded Tasks**: Run in **Inline Mode** using [`superpowers:test-driven-development`](file:///C:/Users/VATSAL%20M/.agents/skills/superpowers/skills/test-driven-development/SKILL.md) (RED: failing test $\rightarrow$ GREEN: minimal implementation $\rightarrow$ REFACTOR).
- **Architectural Tasks**: Invoke [`superpowers:writing-plans`](file:///C:/Users/VATSAL%20M/.agents/skills/superpowers/skills/writing-plans/SKILL.md) and execute via **Sub-Agent Mode** (`invoke_subagent`).
- **Quality Gate**: Before concluding any backend task, verify against [`superpowers:verification-before-completion`](file:///C:/Users/VATSAL%20M/.agents/skills/superpowers/skills/verification-before-completion/SKILL.md) and automated test suites.
- **⚡ Autonomous Breakthrough Circuit Breaker: Escalation to `unlazy`**:
  - **Dormant by Default (`unlazy:standby`)**: For standard clean implementations, `unlazy` remains dormant to avoid unnecessary overhead.
  - **Auto-Escalates / Activates ONLY when (`unlazy:active`)**:
    1. **Stall / Loop Detection**: The agent is caught in repetitive loops, failing the same test repeatedly, or spending excessive turns/time without forward progress.
    2. **Half-Done Work**: Implementations are returned incomplete, with deferred TODOs or shallow mocks.
    3. **Explicit Directive**: The user invokes `/unlazy` or requests an exhaustive, uncompromised solution ("go out of the box", "give your best", "do not stop until it is completely verified").
  - **What Happens When Escalated**:
    - Suspends casual shortcuts.
    - Generates strict verifiable acceptance gates (`GATES.md`) with explicit `CHECK:` and `EXPECT:` conditions.
    - Builds a Depth Tree to break complex multi-part deliverables into verifiable leaves.
    - Re-verifies every check with execution evidence before reporting completion.

---

## ⚙️ Dual Execution Modes: Inline vs. Sub-Agent

Depending on the scope, dependencies, and parallelizability of the task, the orchestrator selects or recommends the appropriate execution mode:

### 1. Inline Development Mode
- **When to use**: Focused, bounded, localized tasks:
  - Adding or modifying a single API endpoint or schema.
  - Writing or optimizing a single database query or index.
  - Adding a small utility, middleware, or configuration tweak.
  - Fixing an isolated bug or writing a test file.
- **Workflow**: Executed directly within the main conversation turn, keeping full context immediate and concise.

### 2. Sub-Agent Development Mode (`invoke_subagent`)
- **When to use**: Broad, parallel, complex, or cross-cutting tasks:
  - Multi-service microservice scaffolding or cross-repo integrations.
  - Large-scale architectural refactors across multiple subsystems.
  - Complex multi-step database migrations with concurrent data backfilling.
  - Independent parallel investigations (e.g., benchmarking performance while auditing security).
- **Workflow**:
  - The master agent defines clear, isolated tasks and launches specialized subagents via `invoke_subagent`.
  - Subagents execute independently in their own context and report back completed diffs/results.
  - The master agent reviews subagent results, verifies consistency, and synthesizes the final output for the user.

---

## ✂️ Ponytail Integration & Dynamic Level Switching (`ponytail`)

`backend-master` mandatorily integrates the **Ponytail** engineering discipline to eliminate bloat, premature abstraction, and unnecessary code complexity.

### Dynamic Switching Modes:
1. **Normal / Full Mode (`ponytail:full`) — Default**:
   - Applied for standard feature implementation, API creation, database schemas, and clean architectures.
   - Enforces standard library and native framework capabilities first before pulling in third-party libraries.
   - Produces minimal working diffs with clean boundaries.
2. **Ultra Mode (`ponytail:ultra`) — YAGNI Extremist**:
   - Auto-switches for bugfixes, small scripts, hotfixes, or whenever there is a temptation to over-engineer.
   - **Strict Rules**:
     - Deletes before adding. Replaces complex classes with simple functions.
     - Rejects single-implementation interfaces, speculative factories, and unnecessary wrapper layers.
     - Refuses caching or distributed queues when an in-process or simple DB solution suffices.

### Transparent Status Banner:
Prefix every turn with a clean, unobtrusive status banner:
```text
⚡ [backend-master: AUTO|ACTIVE] [mode: lite|full|ultra] Loaded: [<skill-1>, <skill-2>]
```
*(Do NOT output multi-line LTM or STM memory blocks in chat turns; maintain them internally in context and only display them if the user explicitly asks via `/backend-master status`)*.

---

## 🗂️ Curated Sub-Skills Registry (73 Curated Skills)

Selective on-demand loading: Select and read **only the 1 to 3 sub-skills** directly relevant to the current task. Never load all skills at once.

### 1. Core Architecture & System Design
- **`clean-ddd-hexagonal`**: Domain-driven design, bounded contexts, entities, value objects, ports & adapters.
- **`backend-patterns`**: Repository/Service separation, transactions, cache-aside, N+1 query avoidance.
- **`architecture-patterns`**: CQRS, Event Sourcing, microservices boundaries, circuit breakers, scalability.
- **`microservices-architect`**: Service boundaries, distributed sagas, outbox pattern, resilience.

### 2. API Design, Protocols & Inter-Service IPC
- **`api-and-interface-design`**: Strict API contracts, idempotency keys, cursor pagination, RFC 7807 error models.
- **`graphql-architect`**: Apollo Federation 2.5+, DataLoader, query depth limits, subscriptions.
- **`api-designer`**: OpenAPI/Swagger schemas and REST contract specifications.
- **`rest-api`**: REST resource modeling, HTTP verb semantics, status codes, HATEOAS.
- **`websocket-engineer`** / **`websockets`**: Real-time bidirectional WebSockets, room management, Redis pub/sub.
- **`public-grpc-api-design`**: Protocol Buffers IDL, gRPC service contracts, streaming RPCs, error model (`google.rpc.Status`).
- **`webhook-platform-design`**: Enterprise webhook platform architecture, HMAC-SHA256 signature verification, exponential retry backoff, replay prevention.

### 3. Databases, Caching & Data Evolution
- **`sql-pro`**: Relational schema design, normalization, complex joins, indexing strategies.
- **`postgres-pro`**: PostgreSQL specific optimizations, JSONB, concurrency locking, partitioning.
- **`database-optimizer`**: Slow query analysis, `EXPLAIN ANALYZE`, indexing audits, connection pooling.
- **`database-migration`**: Zero-downtime schema evolution, expand-and-contract migrations, non-blocking DDL.
- **`redis-patterns`**: Redis caching patterns (cache-aside, write-through), Redlock distributed locks, TTLs.
- **`mongodb-connection`**: MongoDB connection pooling, replica sets, connection string security, resilient connect.
- **`mongodb-query-optimizer`**: MongoDB query performance, compound indexes, explain plans, aggregation optimization.
- **`elasticsearch-index-design`**: Full-text search index mapping, analyzers, shard & replica allocation, fuzzy queries.
- **`supabase-postgres-best-practices`**: Row Level Security (RLS) policies, Edge Functions, Postgres triggers.
- **`django-storages-s3`**: Cloud object storage (AWS S3, MinIO, Cloudflare R2), signed URLs.
- **`runtime-cache`**: Distributed cache layers, cache invalidation, stampede protection.
- **`vercel-storage`**: Serverless blob, edge config, and key-value datastores.

### 4. Language & Framework Specialists
- **`python-pro`**: Modern Python 3.11/3.12+, strict typing, memory optimization, asyncio runtime.
- **`fastapi-expert`**: Pydantic v2 schemas, async lifespan handlers, dependency injection, asyncpg pools.
- **`django-expert`**: Django ORM, querysets optimization, middleware, DRF serialization.
- **`flask-python`**: Flask Blueprints, application factories, RESTful resource routing, context teardown.
- **`managing-python-dependencies`**: Poetry, uv, pip-tools, virtualenv isolation, deterministic lockfiles.
- **`nodejs-backend-patterns`**: Express/Fastify layered controllers, service classes, repository abstractions, middleware, JWT auth.
- **`fastify-best-practices`**: High-throughput Fastify plugin architecture, encapsulation, lifecycle hooks, fast-json-stringify schema validation.
- **`nestjs-expert`**: Modular TypeScript architecture, DI, guards, interceptors, TypeORM/Prisma.
- **`golang-pro`**: Goroutines, channels, context propagation, error handling idioms, net/http.
- **`rust-engineer`**: Tokio runtime, ownership, Axum/Actix, zero-cost abstractions.
- **`spring-boot-engineer`**: Spring Boot 3, Spring Data, Spring Security.
- **`csharp-developer`**: .NET Core, EF Core, LINQ, ASP.NET Core pipelines.
- **`rails-expert`**: ActiveRecord, Sidekiq, conventions, Turbo.
- **`laravel-specialist`**: Eloquent ORM, service providers, queue workers.
- **`php-pro`**: Modern PHP 8.2+, OOP, typed properties.
- **`micro`**: Lightweight async HTTP microservices.

### 5. Workflows, Message Brokers & Event Streaming
- **`temporal-developer`**: Workflows, activities, deterministic replay, distributed sagas.
- **`temporal-cloud-setup`** / **`temporal-ops`** / **`temporal-serverless`**: Cluster ops, worker scaling, mTLS.
- **`kafka-development`**: Apache Kafka topic design, consumer groups, partitions, schema registry, idempotency.
- **`rabbitmq-development`**: RabbitMQ exchanges (direct, topic, fanout), dead-letter queues (DLX), acks, backpressure.
- **`vercel-queues`**: Asynchronous message delivery, background workers, retry policies.
- **`rag-architect`**: Vector storage (pgvector, Pinecone), embeddings, chunking, hybrid retrieval backends.
- **`ai-gateway`**: Unified LLM model routing, multi-provider failover, SSE streaming responses, token cost tracking.

### 6. Production Readiness, Containerization, Cloud & DevOps
- **`devops-engineer`**: Multi-stage Dockerfiles, Docker Compose, CI/CD pipelines, containerization automation.
- **`docker-patterns`**: Production Docker best practices, layer caching, non-root users, secret handling.
- **`cloud-architect`**: AWS/GCP/Azure Well-Architected Framework, VPC networks, zero-trust topologies, DR.
- **`shipping-and-launch`**: Pre-launch checklists, staged canary rollouts, zero-downtime cutovers, rollback procedures.
- **`ci-cd-and-automation`**: Automated build & test pipelines (GitHub Actions, GitLab CI), shift-left quality gates.
- **`git-workflow-and-versioning`**: Production release tagging, SemVer, trunk-based development, atomic commits.
- **`deprecation-and-migration`**: Deprecation roadmaps, sunsetting APIs (Hyrum's Law), backward compatibility.
- **`observability-and-instrumentation`**: OpenTelemetry distributed tracing, RED/USE metrics, structured JSON logging.
- **`monitoring-expert`**: Prometheus metrics, Grafana dashboards, alerting SLIs/SLOs.
- **`sentry`**: Error monitoring, unhandled exception alerting, transaction performance tracing.
- **`kubernetes-specialist`**: Deployments, StatefulSets, Ingress, HPA, Helm charts, container orchestration.
- **`terraform-engineer`**: Infrastructure as Code (IaC), cloud provisioning, remote state locking.
- **`sre-engineer`**: Site reliability engineering, circuit breakers, incident remediation, chaos testing.

### 7. Testing, Load Profiling & QA
- **`test-master`**: Unit/integration/E2E test architectures, test strategies, mocking, flakiness fixes.
- **`k6`**: API load testing, stress testing, throughput limits, latency benchmarking, performance gates.
- **`performance-optimization`**: Measure-identify-fix-verify profiling workflow, CPU flamegraphs, N+1 elimination.

### 8. Security, Authentication & Hardening
- **`auth`** / **`oauth`**: Authentication patterns, OAuth 2.0, OIDC, JWT access/refresh token rotation.
- **`security-and-hardening`**: Defense-in-depth, input sanitization, CSRF/CORS policies.
- **`security-audit`** / **`security-diff-scan`**: Vulnerability code scanning and patch review.
- **`owasp-top-10-testing`**: OWASP API Top 10 auditing, SQLi, SSRF, Broken Object Level Authorization (BOLA/IDOR).
- **`api-security-testing`**: API endpoint penetration tests, authorization bypass checks, fuzz testing.
- **`vibesec`**: Web application security auditing and safe remediation.

---

## 📖 References & Review Disclaimer
Backend-Master synthesizes community-curated skills and patterns. Always review all architectural proposals, database migrations, and code diffs before production deployment. Full credits, upstream links, and registry references are in [`REFERENCES.md`](REFERENCES.md).
