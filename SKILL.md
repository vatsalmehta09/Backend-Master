---
name: backend-master
description: >
  Universal backend engineering orchestrator & curated skill hub. Use when designing, building, debugging, optimizing, testing, or hardening backend services, APIs, databases, message queues, container infrastructure, or microservices across any language or framework (Python, Node.js/TS, Go, Rust, Java, C#, PHP, Ruby, and dynamic polyglot execution).
---

# Universal Backend Master Orchestrator

The universal supervisor for all backend engineering across frameworks, languages, databases, distributed patterns, API designs, observability, container orchestration, and security.

---

## ⚡ Dynamic Auto-Activation & Command Palette

`backend-master` activates **automatically** whenever any backend engineering task is detected in the conversation (APIs, schemas, databases, queues, architectures, Docker, testing, performance, or security).

### 🕹️ Action Command Palette (`/backend-master <command> [target]`)

All commands accept an optional `[target]` parameter (file path, directory, service, endpoint, or query):

| Command | What it executes | Underlying Specialist Skills |
|---|---|---|
| `/backend-master` or `/backend-master active` | Locks persistent active orchestrator for the session (default: `full` mode). | Core Orchestrator |
| `/backend-master lite` | Switches session to **Lite** mode (rapid turnaround, 1-line confirmation gate). | Core Orchestrator |
| `/backend-master full` | Switches session to **Full** mode (standard clean architecture & comprehensive TDD). | Core Orchestrator |
| `/backend-master ultra` | Switches session to **Ultra** mode (Ponytail YAGNI extremist: delete bloat, stdlib first). | `ponytail` |
| `/backend-master init` | Project inspection & setup: detects frameworks, DBs, ORMs, and initializes durable `BACKEND.md`. | Core Orchestrator |
| `/backend-master audit [target]` | Codebase sweep: OWASP Top 10, N+1 queries, unhandled errors, connection pool leaks, dead code. | `owasp-top-10-testing`, `security-audit`, `database-optimizer` |
| `/backend-master diagnose [target]` | Root-cause a specific bug, crash, or failing test: stack trace analysis, log triage, fault isolation. | Framework specialists, `observability-and-instrumentation` |
| `/backend-master profile [target]` | Quantitative performance breakdown: slow queries (`EXPLAIN ANALYZE`), CPU hotspots, pool contention. | `database-optimizer`, `postgres-pro`, `performance-optimization` |
| `/backend-master scaffold [target]` | Generate clean service, router, handler, or module boilerplate with opinionated boundaries. | `clean-ddd-hexagonal`, `backend-patterns`, framework specialists |
| `/backend-master schema [target]` | Relational or document schema design, normalization, zero-downtime expand/contract migrations, non-blocking DDL. | `sql-pro`, `postgres-pro`, `database-migration`, `mongodb-*` |
| `/backend-master api [target]` | Contract-first API modeling: OpenAPI 3.1 specs, Protocol Buffers IDL, GraphQL SDL, cursor pagination, idempotency keys. | `api-and-interface-design`, `public-grpc-api-design`, `graphql-architect` |
| `/backend-master integrate [target]` | Inter-service messaging & workflows: Kafka topics, RabbitMQ exchanges/DLX, Temporal sagas, WebSocket rooms. | `kafka-development`, `rabbitmq-development`, `temporal-developer`, `websocket-engineer` |
| `/backend-master harden [target]` | Defense-in-depth: rate limiting, CORS/CSRF, JWT/OIDC auth guards, RFC 7807 error envelopes, timeouts, RLS. | `security-and-hardening`, `auth`, `oauth`, `vibesec` |
| `/backend-master pentest [target]` | Active red-team probe: simulates attack payloads (SQLi, BOLA/IDOR, SSRF, broken auth, input fuzzing). | `api-security-testing`, `owasp-top-10-testing`, `security-diff-scan` |
| `/backend-master test [target]` | Scaffold unit & integration test suites, mock strategies, database fixtures, and coverage audits. | `test-master`, framework testing libraries |
| `/backend-master loadtest [target]` | Generate & execute k6 load/stress tests: measure throughput ceilings, p95/p99 latency, breaking points. | `k6`, `performance-optimization` |
| `/backend-master optimize [target]` | Targeted performance fixes: composite indexing, query rewrites, Redis cache-aside, connection pool tuning. | `database-optimizer`, `redis-patterns`, `runtime-cache` |
| `/backend-master containerize [target]` | Production container infrastructure: multi-stage Dockerfiles, Docker Compose meshes, unprivileged users, healthchecks. | `docker-patterns`, `devops-engineer`, `kubernetes-specialist` |
| `/backend-master observe [target]` | Vendor-neutral observability: OpenTelemetry traces/spans, Prometheus RED/USE metrics, structured JSON logging. | `observability-and-instrumentation`, `monitoring-expert` |
| `/backend-master status` | Displays current activation state, active mode, internal LTM stack, STM task, and loaded skills. | Core Orchestrator |
| `/backend-master off` | Deactivates persistent mode; returns to default model behavior. | Core Orchestrator |
| `/unlazy` | Manually triggers the autonomous breakthrough circuit breaker with explicit `GATES.md` acceptance gates. | Core Orchestrator |
| Direct Sub-Skill Invocation | Direct calls (e.g. `/postgres-pro`, `/fastapi-expert`, `/docker-patterns`) integrate seamlessly at any time. | Sub-Skill Registry |

### 🎛️ Three Operating Modes (`lite` | `full` | `ultra`)

1. **`lite` Mode (`/backend-master lite`)**:
   - **For**: Rapid bugfixes, quick queries, micro-endpoints, single-file edits, or tight turnaround requests.
   - **Behavior**: Fast 1-line confirmation gate (*"Proposed fix: X in file Y. Proceed?"*). Minimal overhead, maximum speed, laser focus on immediate delivery.
2. **`full` Mode (`/backend-master full` — Default)**:
   - **For**: Standard production backend engineering, new feature modules, domain modeling, and schema migrations.
   - **Behavior**: Comprehensive Phase 1 exploration, 2–3 architectural trade-offs, strict Phase 2 Hard Stop, and Phase 3 TDD with clean architecture.
3. **`ultra` Mode (`/backend-master ultra`) — YAGNI Extremist**:
   - **For**: Refactoring technical debt, hotfixes, eliminating bloat, or preventing premature architectural complexity (Ponytail discipline).
   - **Behavior**: Deletes dead code, strips wrapper layers, eliminates speculative interfaces and factories, rejects third-party dependencies when standard library suffices, refuses premature caching/queues.

### 🛡️ Laser Focus & Anti-Hallucination Policy:
- **Stay On-Point**: Address only what is directly relevant to the backend task at hand. Eliminate unsolicited essays, meta-commentary, and conversational filler.
- **Minimal Clean Banner**: Display a single clean status banner:
  ```text
  ⚡ [backend-master: ACTIVE] [mode: full] Loaded: [<skill-1>, <skill-2>]
  ```
  *(LTM and STM memory states are maintained internally in context and are NOT printed in chat turns unless explicitly requested via `/backend-master status`)*.
- **Strict Ground Truth Verification**: Never speculate or hallucinate APIs, package versions, database columns, or repository paths. Always verify against actual files and manifests before asserting.

---

## 🚫 The 7 Backend Anti-Patterns (Zero AI Backend Slop)

Coding agents frequently fall into statistical failure modes when writing backend code. `backend-master` strictly enforces this non-negotiable contract:

1. 🚫 **No N+1 Queries**: Never query a database inside a loop. Always use bulk queries (`WHERE id IN (...)`), joins, or DataLoader batching.
2. 🚫 **No Unparameterized SQL**: Zero string interpolation or concatenation in queries (`f"SELECT ... {var}"` or `"SELECT ... " + var`). All dynamic inputs must use parameterized bindings to prevent SQL injection.
3. 🚫 **No Event-Loop Blocking**: Zero synchronous blocking I/O calls (`time.sleep()`, `fs.readFileSync()`, synchronous HTTP clients) inside asynchronous handlers. Always use native async primitives (`asyncio.sleep()`, `fs.promises.readFile()`, `httpx.AsyncClient`).
4. 🚫 **No Unbounded Pagination**: Never execute `SELECT *` without an explicit `LIMIT`. Prohibit large offset pagination (`OFFSET 100000`) on large tables; enforce keyset / cursor pagination.
5. 🚫 **No Silent Error Swallowing**: Ban empty catch blocks (`except Exception: pass`, `catch (e) {}`). All errors must either be handled with specific recovery logic or mapped to structured [RFC 7807 Problem Details](https://datatracker.ietf.org/doc/html/rfc7807).
6. 🚫 **No Hardcoded Secrets**: Zero plaintext passwords, API keys, or JWT secrets in code files. Enforce environment variable injection (`os.getenv()`, `process.env`) and secret masking in logs.
7. 🚫 **No Table-Locking Migrations**: Forbid destructive, blocking DDL operations (`ALTER TABLE ... ADD COLUMN ... DEFAULT <val>` on active tables without non-blocking mechanisms). Enforce the expand-and-contract migration pattern with safe dual-writing.

---

## 🌐 Language & Framework Support

### 1. First-Class Curated Languages (8 Languages, 16+ Frameworks)
`backend-master` includes dedicated, curated specialists for the primary backend languages:

| Language | Frameworks & Libraries | Curated Specialist Skills |
|---|---|---|
| **Python** | FastAPI, Django, Flask, asyncpg, SQLAlchemy, Celery | `python-pro`, `fastapi-expert`, `django-expert`, `flask-python`, `managing-python-dependencies` |
| **Node.js / TypeScript** | Fastify, Express, NestJS, Prisma, TypeORM, Micro | `nodejs-backend-patterns`, `fastify-best-practices`, `nestjs-expert`, `micro` |
| **Go** | `net/http`, Gin, Echo, Chi, GORM, sqlx | `golang-pro` |
| **Rust** | Axum, Actix-web, Tokio, SQLx, Diesel | `rust-engineer` |
| **Java / Kotlin** | Spring Boot 3, Spring Data, Hibernate, Quarkus | `spring-boot-engineer` |
| **C# / .NET** | ASP.NET Core, EF Core, Minimal APIs | `csharp-developer` |
| **Ruby** | Ruby on Rails, Sinatra, Sidekiq, ActiveRecord | `rails-expert` |
| **PHP** | Laravel, Symfony, Slim, Eloquent | `laravel-specialist`, `php-pro` |

### 2. Universal Dynamic Polyglot Engine (ANY Language or Framework)
When operating in a language or framework that does **not** have a static sub-skill (e.g. **Elixir / Phoenix**, **Kotlin / Ktor**, **Scala / Akka / Play**, **C++ / Crow / Drogon**, **Swift / Vapor**, **Zig**, **Clojure / Ring**, **Deno / Fresh**, **Bun / Elysia / Hono**):

`backend-master` runs **dynamically over the project**:
1. **Discovers Idioms Transparently**: Inspects language manifests (`mix.exs`, `build.gradle.kts`, `CMakeLists.txt`, `Package.swift`, `project.clj`, `deno.json`) to determine project dependencies and idioms.
2. **Enforces Universal Architectural Invariants**:
   - Strict separation of Domain entities from Framework / Transport adapters (Hexagonal / Ports & Adapters).
   - Atomic database transactions with rollback on failure.
   - Bounded connection pooling and timeout configurations.
   - Parameterized queries and SQL injection protection.
   - Idempotency keys on mutating operations (`POST`, `PATCH`).
   - Standardized structured error responses (RFC 7807).
3. **Applies Native Concurrency**: Translates concurrency best practices into the target runtime (BEAM processes and supervision trees in Elixir, coroutines in Kotlin, virtual threads in modern Java, actors in Scala, tasks in Swift).

---

## 🧠 In-Session Memory Engine (LTM, STM & `BACKEND.md`)

`backend-master` maintains memory **purely inside the session context** (zero extraneous files created on disk), dynamically balancing high-inertia architectural invariants with rolling task working states.

### 1. Durable System Truth: `BACKEND.md` (via `/backend-master init`)
When `/backend-master init` is executed, the orchestrator inspects the workspace and creates or updates a root **`BACKEND.md`**:
- **Tech Stack Invariants**: Primary languages, web frameworks, package managers, and runtimes.
- **Data Layer**: Relational/NoSQL database engines, migration directory (`alembic/`, `prisma/`, `migrations/`), and connection pool limits.
- **Authentication**: Primary auth strategy (JWT, OAuth2, session cookies, API keys).
- **Messaging & Caching**: Active message brokers (Kafka, RabbitMQ) and caching layers (Redis).
- *Result*: Future commands across long conversations never lose context or hallucinate conflicting tech choices.

### 2. In-Session LTM & STM Dynamics
- **Long-Term Memory (LTM) — High Inertia (Session Anchor)**:
  - Tracks foundational architectural invariants: Languages, Frameworks, Databases, Caching, Event Brokers, and Service Maps.
  - Mutates *only* when the user issues an intentional, high-level migration directive.
- **Short-Term Memory (STM) — Low Inertia (Current Task Window)**:
  - Spans the current prompt and the rolling micro-window of the last 2 to 4 related turns (proposal ➔ feedback ➔ approval ➔ execution ➔ test verification).
  - Automatically resets when the active task completes or pivots.

---

## 🔒 The Hardcoded Workflow Gate (Plan-Then-Execute)

Every backend task **MUST STRICTLY FOLLOW THIS HARD-GATED 3-PHASE SEQUENCE**. Never bypass the user verification gate.

```
┌────────────────────────────────────────────────────────┐
│  PHASE 1: CONTEXT EXPLORATION & BRAINSTORMING          │
│  - Classify task (Spike, Bounded, or Architectural)    │
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
│  PHASE 3: EXECUTION & VERIFICATION                     │
│  - Bounded: Inline + Test-Driven Development (TDD)     │
│  - Architectural: Sub-agents + Writing Plans           │
│  - Apply Ponytail discipline (full vs. ultra YAGNI)    │
│  - Pre-completion: Verification Before Completion      │
└────────────────────────────────────────────────────────┘
```

### Phase 1: Explore & Plan (`brainstorming`)
1. Classify the task:
   - **Spike**: Fast exploratory feasibility probe ("Can we...", "Is it possible to..."). Present probe plan in 2–3 sentences.
   - **Bounded**: Scoped change to existing code (new endpoint, bugfix, schema addition, query optimization). Present short in-chat design.
   - **Architectural**: New service, new database cluster, cross-cutting distributed flow, or breaking contract. Present 2–3 approaches with trade-offs.
2. Select and read **only $\le 3$ relevant curated sub-skills** from the registry.

### Phase 2: The Strict User Verification Gate (HARD STOP)
- **What "No Code Generation" Means**:
  - The agent **must halt execution** and wait for the human engineer's explicit approval.
  - **PROHIBITED in Phase 2**: Generating production code files, editing existing code in the repository, or presenting complete implementation diffs.
  - The agent waits until the user explicitly confirms (*"Approved"*, *"Proceed with Option 2"*, *"Looks good"*).

### Phase 3: Execution & Verification
- **Bounded Tasks**: Run in **Inline Mode** using Test-Driven Development (RED: failing test $\rightarrow$ GREEN: minimal implementation $\rightarrow$ REFACTOR).
- **Architectural Tasks**: Execute via **Sub-Agent Mode** (`invoke_subagent`).
- **Autonomous Breakthrough Circuit Breaker (`/unlazy`)**:
  - Auto-escalates on stall/loop detection, half-done work, or explicit directive.
  - Generates strict verifiable acceptance gates (`GATES.md`) and Depth Tree leaves.

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
- **`devops-engineer`**: Multi-stage Dockerfiles, Docker Compose pipelines, containerization automation.
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
