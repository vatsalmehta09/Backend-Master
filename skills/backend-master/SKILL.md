---
name: backend-master
description: >
  Universal master orchestrator and supervisor for all backend engineering across frameworks, languages, databases, distributed patterns, API designs, observability, container orchestration, and security. Automatically activates on any backend task. Enforces hard-gated planning before execution, dual inline/sub-agent execution modes, ponytail YAGNI pruning, and selective just-in-time domain skill loading.
---

# Universal Backend Master Orchestrator

The universal supervisor for all backend engineering across frameworks, languages, databases, distributed patterns, API designs, observability, container orchestration, and security.

---

## ⚡ Dynamic Auto-Activation & Commands

`backend-master` activates **automatically** whenever any backend engineering task is detected in the conversation (APIs, schemas, databases, queues, architectures, Docker, testing, performance, or security).

### Session Commands:
- `/backend-master` or `/backend-master active`
  Locks persistent active mode for the session, ensuring every turn runs the backend orchestrator pipeline.
- `/backend-master off` or `/backend-master deactivate`
  Deactivates persistent mode; returns to default model behavior.
- `/backend-master status`
  Displays the current activation state, current ponytail mode (`full` vs `ultra`), and active sub-skills.
- `/backend-master <task>`
  Executes a specific backend task through the master routing engine.
- Direct Sub-Skill Invocation (e.g. `/postgres-pro`, `/fastapi-expert`, `/docker-patterns`):
  Can be invoked directly at any time; seamlessly integrated into the master orchestrator context.

---

## 🔒 HARDCODED MANDATORY COMMAND FLOW: Plan-Then-Execute Gate

Every backend task **MUST STRICTLY FOLLOW THIS HARD-GATED 3-PHASE SEQUENCE**. Never bypass the user verification gate.

```
┌────────────────────────────────────────────────────────┐
│  PHASE 1: CONTEXT EXPLORATION & BRAINSTORMING          │
│  - Classify task (Spike, Bounded, or Architectural)    │
│  - Mandatorily invoke `brainstorming` (from superpowers)│
│  - Present 2–3 architectural options with trade-offs   │
└──────────────────────────┬─────────────────────────────┘
                           │
                           ▼
┌────────────────────────────────────────────────────────┐
│  PHASE 2: THE STRICT USER VERIFICATION GATE            │
│  ⚠️  HARD STOP: WAIT FOR EXPLICIT USER APPROVAL        │
│  ❌  NO CODE GENERATION OR FILE EDITS ALLOWED HERE      │
└──────────────────────────┬─────────────────────────────┘
                           │ (User confirms & approves plan)
                           ▼
┌────────────────────────────────────────────────────────┐
│  PHASE 3: EXECUTION (INLINE OR SUB-AGENT)              │
│  - Execute code changes ONLY on approved plan          │
│  - Apply Ponytail discipline (full vs. ultra)          │
│  - Verify against test suite & quality standards       │
└────────────────────────────────────────────────────────┘
```

### Phase 1: Explore & Plan (`brainstorming`)
1. Classify the task:
   - **Spike**: Fast exploratory proof-of-concept.
   - **Bounded**: Concrete, well-scoped change within existing service/module.
   - **Architectural**: New service, data model change, cross-cutting distributed flow, or breaking migration.
2. Ask clarifying questions one at a time if requirements are ambiguous.
3. Present 2–3 clear implementation options with explicit trade-offs.

### Phase 2: The Strict User Verification Gate (HARD STOP)
- **You MUST STOP and wait for the user's explicit verification and approval.**
- **STRICT PROHIBITION**: Do NOT write implementation code, do NOT create new modules, and do NOT edit existing code files until the user explicitly selects an approach and confirms: *"Proceed"*, *"Approved"*, or provides direct feedback.

### Phase 3: Execution (Only After Approval)
- Execute the agreed-upon design using the appropriate execution mode (Inline or Sub-Agent).

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
Prefix every turn with the active orchestrator banner:
```
⚡ [backend-master: AUTO|ACTIVE] [ponytail: full|ultra] Loaded skills: [<skill-1>, <skill-2>]
```

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
