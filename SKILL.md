---
name: backend-master
description: >
  Use when designing, building, reviewing, refactoring, or optimizing backend systems, server architectures, microservices, APIs, databases, message queues, distributed workflows, or backend security. Activates the master backend orchestrator across all backend technologies.
---

# Universal Backend Master Orchestrator

The universal supervisor for all backend engineering across frameworks, languages, databases, distributed patterns, API designs, observability, and container orchestration.

## Activation Modes & Commands

- `/backend-master active`
  **Enters Persistent Active Mode for the session.** Once activated, EVERY subsequent prompt involving backend code, APIs, architecture, data, or workflows will automatically invoke the dynamic routing and selective skill loading engine.
- `/backend-master off` or `/backend-master deactivate`
  Deactivates persistent mode; returns to default handling.
- `/backend-master status`
  Displays whether persistent mode is currently ACTIVE, and lists any recently loaded sub-skills.
- `/backend-master <task>`
  Executes a single backend task through the master routing engine without locking persistent mode.
- Direct Sub-Skill Invocation (e.g. `/postgres-pro`, `/fastapi-expert`, `/clean-ddd-hexagonal`):
  Can be invoked at any time. When persistent mode is active, manual sub-skill calls are honored and integrated directly into the master session.

---

## The Execution Engine (4-Step Pipeline)

Whenever `/backend-master active` is set, run this sequence for every turn:

```
[1. Classify Task & Stack] 
       │
       ▼
[2. Evaluate Capability Matrix] 
       │
       ▼
[3. Selective On-Demand Skill Loading (Rule of ≤3)]
       │
       ▼
[4. Output Activation Banner & Execute]
```

### 1. Classify Task & Stack
Identify the key technical axes:
- **Architecture**: Monolith vs. Microservice, Clean Architecture / Hexagonal / DDD, CQRS, Event-Driven.
- **Contract / Protocols**: REST, GraphQL, gRPC, WebSockets, Webhooks.
- **Languages & Frameworks**:
  - **Python**: Core Modern Python (3.11/3.12+), FastAPI, Django, Django REST Framework, dependency isolation.
  - **Node.js / TypeScript**: NestJS, Express, microservices, dependency injection.
  - **Go, Rust, Java (Spring Boot), C# (.NET Core), PHP (Laravel), Ruby (Rails)**.
- **Data & Caching**: PostgreSQL, SQL, Redis, Supabase, query optimization, connection pooling, S3 storage.
- **Workflows & Queues**: Temporal, Celery, BullMQ, Kafka, message brokers, RAG/Vector backends.
- **Reliability & Observability**: OpenTelemetry, distributed tracing, metrics, structured logging, Sentry error tracking, Kubernetes workloads, Terraform infra.
- **Security**: Auth (OAuth2/JWT/OIDC), OWASP Top 10, rate limiting, BOLA/IDOR prevention, cryptographic signatures.

### 2. Selective On-Demand Skill Loading (Rule of ≤3)
Select and read **only the 1 to 3 sub-skills** directly relevant to the current task from the registry below. Do not load unnecessary skills into context.

### 3. Transparent Activation Banner
Always prefix your response with the loaded sub-skills banner:
`⚡ [backend-master: ACTIVE] Loaded skills: [<skill-1>, <skill-2>]`

---

## Local Backend Sub-Skills Registry (50 Curated Skills)

### 1. Core Architecture & System Design
- **`clean-ddd-hexagonal`** (`~/.agents/skills/clean-ddd-hexagonal/SKILL.md`): Domain-driven design, bounded contexts, entities vs. value objects, ports & adapters, dependency inversion.
- **`backend-patterns`** (`~/.agents/skills/backend-patterns/SKILL.md`): Repository/Service separation, transaction management, Redis caching (cache-aside/write-through), N+1 query prevention.
- **`architecture-patterns`** (`~/.agents/skills/architecture-patterns/SKILL.md`): CQRS, Event Sourcing, microservices boundaries, circuit breakers, scalability.
- **`microservices-architect`** (`~/.agents/skills/microservices-architect/SKILL.md`): Service boundaries, distributed sagas, outbox pattern, resilience.

### 2. API Design, Protocols & Real-Time
- **`api-and-interface-design`** (`~/.agents/skills/api-and-interface-design/SKILL.md`): Strict API contracts, idempotency keys, cursor pagination, RFC 7807 error responses, backward compatibility (Hyrum's Law).
- **`graphql-architect`** (`~/.agents/skills/graphql-architect/SKILL.md`): Schema modeling, Apollo Federation 2.5+, DataLoader N+1 mitigation, query depth/complexity security, GraphQL subscriptions.
- **`api-designer`** (`~/.agents/skills/api-designer/SKILL.md`): OpenAPI/Swagger schemas, API contracts.
- **`rest-api`** (`~/.agents/skills/rest-api/SKILL.md`): REST resource modeling, HTTP verbs, status code semantics.
- **`websocket-engineer`** / **`websockets`** (`~/.agents/skills/websocket-engineer/SKILL.md`): Real-time bidirectional communication, WebSocket handling, rooms, Redis pub/sub scaling.

### 3. Databases, Storage & Caching
- **`sql-pro`** (`~/.agents/skills/sql-pro/SKILL.md`): Relational schema design, normalization, complex joins, indexing strategies.
- **`postgres-pro`** (`~/.agents/skills/postgres-pro/SKILL.md`): PostgreSQL specific optimizations, JSONB, concurrency locking, partitioning, foreign data wrappers.
- **`database-optimizer`** (`~/.agents/skills/database-optimizer/SKILL.md`): Slow query analysis, EXPLAIN ANALYZE, indexing audits, connection pool sizing.
- **`supabase-postgres-best-practices`** (`~/.agents/skills/supabase-postgres-best-practices/SKILL.md`): Row Level Security (RLS) policies, Edge Functions, Postgres triggers.
- **`django-storages-s3`** (`~/.agents/skills/django-storages-s3/SKILL.md`): Cloud object storage (AWS S3, MinIO, Cloudflare R2), signed URLs, media uploads.
- **`runtime-cache`** (`~/.agents/skills/runtime-cache/SKILL.md`): Distributed cache layers, cache invalidation, stampede protection.
- **`vercel-storage`** (`~/.agents/skills/vercel-storage/SKILL.md`): Serverless blob, edge config, and key-value datastores.

### 4. Language & Framework Specialists
- **`python-pro`** (`~/.agents/skills/python-pro/SKILL.md`): Modern Python 3.11/3.12+, strict type hints, memory management, asyncio runtime, decorators.
- **`fastapi-expert`** (`~/.agents/skills/fastapi-expert/SKILL.md`): Pydantic v2 schemas, async lifespan handlers, dependency injection, asyncpg pools.
- **`django-expert`** (`~/.agents/skills/django-expert/SKILL.md`): Django ORM, querysets optimization, middleware, signals, DRF serialization.
- **`managing-python-dependencies`** (`~/.agents/skills/managing-python-dependencies/SKILL.md`): Poetry, uv, pip-tools, virtualenv isolation, reproducible lockfiles.
- **`nestjs-expert`** (`~/.agents/skills/nestjs-expert/SKILL.md`): Modular TypeScript architecture, controllers, services, guards, interceptors, TypeORM/Prisma.
- **`golang-pro`** (`~/.agents/skills/golang-pro/SKILL.md`): Goroutines, channels, context propagation, error handling idioms.
- **`rust-engineer`** (`~/.agents/skills/rust-engineer/SKILL.md`): Tokio runtime, ownership, Axum/Actix, zero-cost abstractions.
- **`spring-boot-engineer`** (`~/.agents/skills/spring-boot-engineer/SKILL.md`): Spring Boot 3, Spring Data, Spring Security.
- **`csharp-developer`** (`~/.agents/skills/csharp-developer/SKILL.md`): .NET Core, EF Core, LINQ, ASP.NET Core pipelines.
- **`rails-expert`** (`~/.agents/skills/rails-expert/SKILL.md`): ActiveRecord, Sidekiq, conventions, Turbo.
- **`laravel-specialist`** (`~/.agents/skills/laravel-specialist/SKILL.md`): Eloquent ORM, service providers, queues.
- **`php-pro`** (`~/.agents/skills/php-pro/SKILL.md`): Modern PHP 8.2+, OOP, typed properties.
- **`micro`** (`~/.agents/skills/micro/SKILL.md`): Lightweight async HTTP microservices.

### 5. Distributed Workflows, Queues & AI Backends
- **`temporal-developer`** (`~/.agents/skills/temporal-developer/SKILL.md`): Workflows, activities, deterministic replay, sagas.
- **`temporal-cloud-setup`** / **`temporal-ops`** / **`temporal-serverless`**: Deployment, worker auto-scaling, operational diagnostics.
- **`vercel-queues`** (`~/.agents/skills/vercel-queues/SKILL.md`): Asynchronous message delivery, background workers, retry policies.
- **`rag-architect`** (`~/.agents/skills/rag-architect/SKILL.md`): Vector storage, chunking, embeddings, hybrid retrieval backends.

### 6. Production Readiness, Release Pipelines & Infrastructure
- **`shipping-and-launch`** (`~/.agents/skills/shipping-and-launch/SKILL.md`): Pre-launch checklists, staged canary rollouts, zero-downtime deployments, reversible database migrations, and instant rollback procedures.
- **`ci-cd-and-automation`** (`~/.agents/skills/ci-cd-and-automation/SKILL.md`): Automated build and test pipelines (GitHub Actions, GitLab CI), shift-left automated quality gates, linting/type-check enforcement, and automated container deployment.
- **`git-workflow-and-versioning`** (`~/.agents/skills/git-workflow-and-versioning/SKILL.md`): Production release tagging, semantic versioning (SemVer), trunk-based development, atomic commits, PR change logs, and merge conflict resolution.
- **`deprecation-and-migration`** (`~/.agents/skills/deprecation-and-migration/SKILL.md`): Database schema versioning, expand-and-contract zero-downtime schema migrations, data backfills, and API sunsetting (Hyrum's Law).
- **`observability-and-instrumentation`** (`~/.agents/skills/observability-and-instrumentation/SKILL.md`): OpenTelemetry traces, RED/USE metrics, structured logging.
- **`monitoring-expert`** (`~/.agents/skills/monitoring-expert/SKILL.md`): Prometheus metrics, Grafana dashboards, alerting SLIs/SLOs.
- **`sentry`** (`~/.agents/skills/sentry/SKILL.md`): Error tracking, exception captures, performance transaction tracing.
- **`kubernetes-specialist`** (`~/.agents/skills/kubernetes-specialist/SKILL.md`): Deployments, StatefulSets, Ingress, HPA, Helm charts, container orchestration.
- **`terraform-engineer`** (`~/.agents/skills/terraform-engineer/SKILL.md`): Infrastructure as Code, cloud resource provisioning, state locking.
- **`sre-engineer`** (`~/.agents/skills/sre-engineer/SKILL.md`): Site reliability, circuit breakers, incident remediation, high availability.

### 7. Security, Authentication & Hardening
- **`auth`** / **`oauth`** (`~/.agents/skills/auth/SKILL.md`): OAuth2, OIDC, JWT access/refresh token rotation, sessions.
- **`security-and-hardening`** (`~/.agents/skills/security-and-hardening/SKILL.md`): Defense in depth, input sanitization, CSRF/CORS.
- **`owasp-top-10-testing`** (`~/.agents/skills/owasp-top-10-testing/SKILL.md`): API vulnerability checks, SQLi, SSRF, broken object level authorization (BOLA).
- **`api-security-testing`** (`~/.agents/skills/api-security-testing/SKILL.md`): Endpoint penetration audits, auth bypass testing.
- **`security-audit`** / **`security-diff-scan`**: Vulnerability code scanning and patch review.
- **`vibesec`** (`~/.agents/skills/vibesec/SKILL.md`): Web security auditing and remediation.

---

## Core Operating Rules & Superpower Disciplines

When `/backend-master active` is toggled, the agent MUST strictly enforce these four operational disciplines:

### 1. Mandatory Auto-Routing & Selective Skill Loading
- If ANY task, sub-task, or code requirement has a related skill in the local catalog (architecture, API, database, framework, queue, security, CI/CD, or production launch), the agent **MUST automatically select and load that specific skill**.
- The agent must not guess or write unguided code when an established domain skill exists.

### 2. Ponytail Integration & Dynamic Level Switching (`ponytail`)
- **Active on Every Implementation:** Automatically engage **`ponytail`** to eliminate premature optimization, bloat, unnecessary abstractions, and unneeded dependencies.
- **Dynamic Mode Switching:**
  - **Normal / Full Mode (`ponytail:full`)**: Default for standard feature development, API creation, database schemas, and structured architectures. Enforces stdlib/native features first, minimal working diff, and clean separation.
  - **Ultra Mode (`ponytail:ultra`)**: Auto-switch to Ultra for quick fixes, local utilities, prototyping, or whenever there is risk of over-engineering (e.g. adding microservices/factories/caches where a simple one-liner or native function solves it). YAGNI extremist: deletes before adding, avoids single-implementation interfaces.
- The active banner must reflect the current ponytail intensity, e.g.:
  `⚡ [backend-master: ACTIVE] [ponytail: full] Loaded skills: [...]`

### 3. Superpowers & Mandatory Brainstorming (`brainstorming`)
- Before rushing into code, major refactors, or new architectures, **mandatorily invoke `brainstorming` (from superpowers)**.
- Follow the hard-gate rule:
  1. Explore context and classify the task (Spike, Bounded, or Architectural).
  2. Ask clarifying questions one at a time.
  3. Present 2–3 trade-off approaches.
  4. Wait for explicit user approval before writing code.
- Never write code for new subsystems without getting the human partner's sign-off first.

### 4. Context Efficiency & Transparent Banner
- Never load all skills at once. Load only the 1 to 3 relevant domain sub-skills per request.
- Always output the status banner at the beginning of each turn:
  `⚡ [backend-master: ACTIVE] [ponytail: full|ultra] Loaded skills: [<skill-1>, <skill-2>]`

