---
name: backend-master
description: >
  Use when designing, building, reviewing, refactoring, or optimizing backend systems, server architectures, microservices, APIs, databases, message queues, distributed workflows, or backend security. Activates the master backend orchestrator across all backend technologies.
---

# Universal Backend Master Orchestrator

The universal supervisor for all backend engineering across frameworks, languages, databases, distributed patterns, and API designs.

## Activation Modes & Commands

- `/backend-master active`
  **Enters Persistent Active Mode for the session.** Once activated, EVERY subsequent prompt involving backend code, APIs, architecture, data, or workflows will automatically invoke the dynamic routing and selective skill loading engine.
- `/backend-master off` or `/backend-master deactivate`
  Deactivates persistent mode; returns to default handling.
- `/backend-master status`
  Displays whether persistent mode is currently ACTIVE, and lists any recently loaded sub-skills.
- `/backend-master <task>`
  Executes a single backend task through the master routing engine without locking persistent mode.
- Direct Sub-Skill Invocation (e.g. `/postgres-pro`, `/clean-ddd-hexagonal`):
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
- **Contract / API**: REST, GraphQL, gRPC, WebSockets, Webhooks.
- **Language / Framework**: Python (FastAPI/Django), TypeScript/Node (Express/Nest), Go, Rust, Java/Kotlin (Spring Boot), C# (.NET), PHP (Laravel), Ruby (Rails).
- **Data & Caching**: PostgreSQL, SQL, Redis, Supabase, query optimization, connection pooling.
- **Workflow & Async**: Temporal, Celery, BullMQ, Kafka, message brokers, RAG/Vector backends.
- **Security**: Auth (OAuth2/JWT), OWASP Top 10, rate limiting, data isolation, encryption.

### 2. Selective On-Demand Skill Loading (Rule of ≤3)
Select and read **only the 1 to 3 sub-skills** directly relevant to the current task from the registry below. Do not load unnecessary skills into context.

### 3. Transparent Activation Banner
Always prefix your response with the loaded sub-skills banner:
`⚡ [backend-master: ACTIVE] Loaded skills: [<skill-1>, <skill-2>]`

---

## Local Backend Sub-Skills Registry

When a domain is targeted, locate and follow the specific rules from the corresponding local skill file:

### 1. Core Architecture & System Design
- **`clean-ddd-hexagonal`** (`~/.agents/skills/clean-ddd-hexagonal/SKILL.md`)
  *Domain-driven design, bounded contexts, entities vs. value objects, ports & adapters, dependency inversion.*
- **`backend-patterns`** (`~/.agents/skills/backend-patterns/SKILL.md`)
  *Repository/Service separation, transaction management, Redis caching (cache-aside/write-through), N+1 query prevention.*
- **`architecture-patterns`** (`~/.agents/skills/architecture-patterns/SKILL.md`)
  *CQRS, Event Sourcing, microservices boundaries, circuit breakers, scalability.*
- **`microservices-architect`** (`~/.agents/skills/microservices-architect/SKILL.md`)
  *Service boundaries, distributed sagas, outbox pattern, resilience.*

### 2. API Design, Protocols & Real-Time
- **`api-and-interface-design`** (`~/.agents/skills/api-and-interface-design/SKILL.md`)
  *Strict API contracts, idempotency keys, cursor pagination, RFC 7807 error responses, backward compatibility (Hyrum's Law).*
- **`api-designer`** (`~/.agents/skills/api-designer/SKILL.md`)
  *OpenAPI/Swagger schemas, API contracts.*
- **`websocket-engineer`** / **`websockets`** (`~/.agents/skills/websocket-engineer/SKILL.md`)
  *Real-time bidirectional communication, WebSocket handling, rooms, Redis pub/sub scaling.*

### 3. Databases, Data Access & Optimization
- **`sql-pro`** (`~/.agents/skills/sql-pro/SKILL.md`)
  *Relational schema design, normalization, complex joins, indexing strategies.*
- **`postgres-pro`** (`~/.agents/skills/postgres-pro/SKILL.md`)
  *PostgreSQL specific optimizations, JSONB, concurrency locking, partitioning, foreign data wrappers.*
- **`database-optimizer`** (`~/.agents/skills/database-optimizer/SKILL.md`)
  *Slow query analysis, EXPLAIN ANALYZE, indexing audits, connection pool sizing.*
- **`supabase-postgres-best-practices`** (`~/.agents/skills/supabase-postgres-best-practices/SKILL.md`)
  *Row Level Security (RLS) policies, Edge Functions, Postgres triggers.*

### 4. Language & Framework Specialists
- **`fastapi-expert`** (`~/.agents/skills/fastapi-expert/SKILL.md`): Pydantic v2 schemas, async lifespan handlers, dependency injection.
- **`django-expert`** (`~/.agents/skills/django-expert/SKILL.md`): Django ORM, querysets, middleware, signals, DRF.
- **`python-pro`** (`~/.agents/skills/python-pro/SKILL.md`): Modern Python 3.12+, typing, asyncio, memory management.
- **`golang-pro`** (`~/.agents/skills/golang-pro/SKILL.md`): Goroutines, channels, context propagation, error handling idioms.
- **`rust-engineer`** (`~/.agents/skills/rust-engineer/SKILL.md`): Tokio runtime, ownership, Axum/Actix, zero-cost abstractions.
- **`spring-boot-engineer`** (`~/.agents/skills/spring-boot-engineer/SKILL.md`): Spring Boot 3, Spring Data, Spring Security.
- **`csharp-developer`** (`~/.agents/skills/csharp-developer/SKILL.md`): .NET Core, EF Core, LINQ, ASP.NET Core pipelines.
- **`rails-expert`** (`~/.agents/skills/rails-expert/SKILL.md`): ActiveRecord, Sidekiq, conventions, Turbo.
- **`laravel-specialist`** (`~/.agents/skills/laravel-specialist/SKILL.md`): Eloquent ORM, service providers, queues.

### 5. Distributed Workflows & Queues
- **`temporal-developer`** (`~/.agents/skills/temporal-developer/SKILL.md`): Workflows, activities, deterministic replay, sagas.
- **`temporal-cloud-setup`** / **`temporal-ops`**: Operational management and deployment of Temporal clusters.
- **`rag-architect`** (`~/.agents/skills/rag-architect/SKILL.md`): Vector storage, chunking, embeddings, hybrid retrieval backends.

### 6. Security, Authentication & Hardening
- **`auth`** / **`oauth`** (`~/.agents/skills/auth/SKILL.md`): OAuth2, OIDC, JWT access/refresh token rotation, sessions.
- **`security-and-hardening`** (`~/.agents/skills/security-and-hardening/SKILL.md`): Defense in depth, input sanitization, CSRF/CORS.
- **`owasp-top-10-testing`** (`~/.agents/skills/owasp-top-10-testing/SKILL.md`): API vulnerability checks, SQLi, SSRF, broken object level authorization (BOLA).
- **`vibesec`** (`~/.agents/skills/vibesec/SKILL.md`): Web security auditing and remediation.

---

## Rules of Engagement

1. **Never load all skills at once.** Respect context efficiency. Load only the specific sub-skills needed for the user's immediate question.
2. **Preserve Clean Boundaries:** Domain logic must never directly couple with HTTP request objects or database connections. Always maintain port/adapter or service/repository isolation.
3. **Session Persistence:** When `/backend-master active` is toggled on, maintain active state across the entire conversation until explicitly told `/backend-master off`.
