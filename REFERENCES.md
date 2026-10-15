# Upstream References & Community Attributions

> [!WARNING]
> ### Community Synthesis & Engineering Review Disclaimer
> **Backend-Master** aggregates, synthesizes, and orchestrates open-source agent skills, architectural patterns, and engineering workflows created by talented engineers across the agentic AI community.
> 
> While these skills and patterns are battle-tested and curated for high-quality production engineering, **they are not guaranteed to be universally correct, bug-free, or applicable to every unique architecture without developer review**.
> 
> **MANDATORY POLICY:**
> - Agents and developers MUST review all architectural plans, generated code, database migrations, and security postures before deploying them to production.
> - Never execute non-reversible operations (e.g. dropping columns, running unverified migrations, force deployments) without explicit human confirmation.

---

## 📚 Curated Sub-Skills Directory (65 Skills)

The curated skills included in this repository originate from the open-source agent ecosystem, primarily discoverable via [skills.sh](https://skills.sh/) and GitHub.

### 1. Core Architecture & System Design
| Skill | Upstream Author / Source | Package / Link | Description |
|---|---|---|---|
| `clean-ddd-hexagonal` | Community Ecosystem | [skills.sh](https://skills.sh/) | Domain-driven design, bounded contexts, entities, value objects, ports & adapters. |
| `backend-patterns` | Community Ecosystem | [skills.sh](https://skills.sh/) | Repository/Service layer separation, transactions, cache-aside, N+1 query avoidance. |
| `architecture-patterns` | Community Ecosystem | [skills.sh](https://skills.sh/) | CQRS, Event Sourcing, microservices boundaries, circuit breakers, scalability patterns. |
| `microservices-architect` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | Distributed services, sagas, outbox pattern, resilience, service discovery. |

### 2. API Design, Web Protocols & Inter-Service IPC
| Skill | Upstream Author / Source | Package / Link | Description |
|---|---|---|---|
| `api-and-interface-design` | Community Ecosystem | [skills.sh](https://skills.sh/) | Strict API contracts, idempotency keys, cursor pagination, RFC 7807 error responses. |
| `graphql-architect` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | Schema design, Apollo Federation 2.5+, DataLoader, query depth limits, subscriptions. |
| `api-designer` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | OpenAPI / Swagger specification design and REST contracts. |
| `rest-api` | Community Ecosystem | [skills.sh](https://skills.sh/) | REST resource modeling, HTTP verb semantics, status codes, HATEOAS. |
| `websocket-engineer` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | Real-time bidirectional WebSockets, room management, horizontal pub/sub scaling. |
| `websockets` | Community Ecosystem | [skills.sh](https://skills.sh/) | Low-level WebSocket connection management, heartbeats, backpressure. |
| `public-grpc-api-design` | [Samuel Berthe](https://github.com/samber) | [samber/developer-platform-skills](https://skills.sh/samber/developer-platform-skills/public-grpc-api-design) | Protocol Buffers IDL, gRPC service contracts, streaming RPCs, error model (`google.rpc.Status`). |

### 3. Databases, Caching & Data Evolution
| Skill | Upstream Author / Source | Package / Link | Description |
|---|---|---|---|
| `sql-pro` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | Relational schema design, normalization, complex joins, indexing strategies. |
| `postgres-pro` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | PostgreSQL deep optimization, JSONB, concurrency locking, partitioning, foreign data wrappers. |
| `database-optimizer` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | Query execution plans (`EXPLAIN ANALYZE`), indexing audits, connection pooling. |
| `database-migration` | [W.S. Hobson](https://github.com/wshobson) | [wshobson/agents](https://skills.sh/wshobson/agents/database-migration) | Zero-downtime schema evolution, expand-and-contract migrations, non-blocking DDL. |
| `redis-patterns` | [Affaan M](https://github.com/affaan-m) | [affaan-m/ecc](https://skills.sh/affaan-m/ecc/redis-patterns) | Redis caching patterns (cache-aside, write-through), Redlock distributed locks, TTLs. |
| `supabase-postgres-best-practices` | [Supabase](https://github.com/supabase) | [supabase/agent-skills](https://skills.sh/supabase/agent-skills/supabase-postgres-best-practices) | Row Level Security (RLS) policies, Edge Functions, Postgres triggers, Realtime. |
| `django-storages-s3` | [Awais](https://github.com/awais786) | [GitHub](https://github.com/awais786) | Cloud object storage (AWS S3, MinIO, Cloudflare R2), signed URLs, secure file handling. |
| `runtime-cache` | [Vercel Labs](https://github.com/vercel-labs) | [vercel-labs/agent-skills](https://skills.sh/vercel-labs/agent-skills) | Distributed caching layers, cache stampede mitigation, tag-based invalidation. |
| `vercel-storage` | [Vercel Labs](https://github.com/vercel-labs) | [vercel-labs/agent-skills](https://skills.sh/vercel-labs/agent-skills) | Serverless blob, edge config, and key-value datastores. |

### 4. Language & Framework Specialists
| Skill | Upstream Author / Source | Package / Link | Description |
|---|---|---|---|
| `python-pro` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | Modern Python (3.11/3.12+), strict typing, memory optimization, asyncio runtime. |
| `fastapi-expert` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | Pydantic v2 schemas, async lifespan handlers, dependency injection, asyncpg pools. |
| `django-expert` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | Django ORM, querysets optimization, middleware, DRF serialization. |
| `managing-python-dependencies` | Community Ecosystem | [skills.sh](https://skills.sh/) | uv, Poetry, pip-tools, virtualenv isolation, deterministic lockfiles. |
| `nestjs-expert` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | Modular TypeScript architecture, DI, guards, interceptors, TypeORM/Prisma. |
| `golang-pro` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | Goroutines, channels, context propagation, error handling idioms, net/http. |
| `rust-engineer` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | Tokio runtime, borrow checker, Axum/Actix, zero-cost abstractions. |
| `spring-boot-engineer` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | Spring Boot 3, Spring Data, Spring Security, microservice configuration. |
| `csharp-developer` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | .NET Core, EF Core, LINQ, ASP.NET Core pipelines. |
| `rails-expert` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | ActiveRecord, Sidekiq, conventions, background jobs, Turbo. |
| `laravel-specialist` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | Eloquent ORM, service providers, queue workers, artisan commands. |
| `php-pro` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | Modern PHP 8.2+, OOP, typed properties, strict types. |
| `micro` | [Vercel](https://github.com/vercel) | [vercel/micro](https://github.com/vercel/micro) | Lightweight asynchronous HTTP microservices framework. |

### 5. Workflows, Message Brokers & Event Streaming
| Skill | Upstream Author / Source | Package / Link | Description |
|---|---|---|---|
| `temporal-developer` | Temporal Technologies / Community | [skills.sh](https://skills.sh/) | Workflows, activities, deterministic replay, distributed sagas. |
| `temporal-cloud-setup` | Temporal Technologies / Community | [skills.sh](https://skills.sh/) | Cloud namespace configuration, certificate mTLS, access control. |
| `temporal-ops` | Temporal Technologies / Community | [skills.sh](https://skills.sh/) | Cluster operations, worker scaling, execution history diagnostics. |
| `temporal-serverless` | Temporal Technologies / Community | [skills.sh](https://skills.sh/) | Serverless worker configuration and ephemeral execution patterns. |
| `kafka-development` | [Mindrally](https://github.com/mindrally) | [mindrally/skills](https://skills.sh/mindrally/skills/kafka-development) | Apache Kafka topic design, consumer groups, partitions, schema registry, idempotency. |
| `rabbitmq-development` | [Mindrally](https://github.com/mindrally) | [mindrally/skills](https://skills.sh/mindrally/skills/rabbitmq-development) | RabbitMQ exchanges (direct, topic, fanout), dead-letter queues (DLX), acks, backpressure. |
| `vercel-queues` | [Vercel Labs](https://github.com/vercel-labs) | [vercel-labs/agent-skills](https://skills.sh/vercel-labs/agent-skills) | Asynchronous message delivery, background workers, retry policies. |
| `rag-architect` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | Vector storage (pgvector, Pinecone), embeddings, chunking, hybrid retrieval backends. |

### 6. Production Readiness, Containerization, Cloud & DevOps
| Skill | Upstream Author / Source | Package / Link | Description |
|---|---|---|---|
| `devops-engineer` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | Multi-stage Dockerfiles, Docker Compose, CI/CD pipelines, containerization automation. |
| `docker-patterns` | [Affaan M](https://github.com/affaan-m) | [affaan-m/ecc](https://skills.sh/affaan-m/ecc/docker-patterns) | Production Docker best practices, layer caching, non-root users, secret handling. |
| `cloud-architect` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | AWS/GCP/Azure Well-Architected Framework, VPC networks, zero-trust topologies, DR. |
| `shipping-and-launch` | Community Ecosystem | [skills.sh](https://skills.sh/) | Pre-launch checklists, staged canary rollouts, zero-downtime cutovers, rollback procedures. |
| `ci-cd-and-automation` | Community Ecosystem | [skills.sh](https://skills.sh/) | Automated build & test pipelines (GitHub Actions, GitLab CI), shift-left quality gates. |
| `git-workflow-and-versioning` | Community Ecosystem | [skills.sh](https://skills.sh/) | Production release tagging, SemVer, trunk-based development, atomic commits. |
| `deprecation-and-migration` | [Addy Osmani](https://github.com/addyosmani) | [addyosmani/agent-skills](https://skills.sh/addyosmani/agent-skills) | Deprecation roadmaps, sunsetting APIs (Hyrum's Law), backward-compatible upgrades. |
| `observability-and-instrumentation` | Community Ecosystem | [skills.sh](https://skills.sh/) | OpenTelemetry distributed tracing, RED/USE metrics, structured JSON logging. |
| `monitoring-expert` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | Prometheus metrics, Grafana dashboards, alerting SLIs/SLOs. |
| `sentry` | Community Ecosystem | [skills.sh](https://skills.sh/) | Error monitoring, unhandled exception alerting, transaction performance tracing. |
| `kubernetes-specialist` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | Kubernetes Deployments, StatefulSets, Ingress, HPA, Helm charts, container orchestration. |
| `terraform-engineer` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | Infrastructure as Code (IaC), cloud provisioning, remote state locking, modules. |
| `sre-engineer` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | Site reliability engineering, circuit breakers, incident remediation, chaos testing. |

### 7. Testing, Load Profiling & QA
| Skill | Upstream Author / Source | Package / Link | Description |
|---|---|---|---|
| `test-master` | [Jeff Allan](https://github.com/Jeffallan) | [GitHub](https://github.com/Jeffallan/claude-skills) | Unit/integration/E2E test architectures, test strategies, mocking, flakiness fixes. |
| `k6` | [Grafana Labs](https://github.com/grafana) | [grafana/skills](https://skills.sh/grafana/skills/k6) | API load testing, stress testing, throughput limits, latency benchmarking, performance gates. |
| `performance-optimization` | Community Ecosystem | [skills.sh](https://skills.sh/) | Measure-identify-fix-verify profiling workflow, CPU flamegraphs, N+1 elimination, memory leaks. |

### 8. Security, Authentication & Hardening
| Skill | Upstream Author / Source | Package / Link | Description |
|---|---|---|---|
| `auth` | Community Ecosystem | [skills.sh](https://skills.sh/) | Authentication patterns, password hashing (Argon2id/bcrypt), session management. |
| `oauth` | Community Ecosystem | [skills.sh](https://skills.sh/) | OAuth 2.0, OpenID Connect (OIDC), JWT access/refresh token rotation, scopes. |
| `security-and-hardening` | Community Ecosystem | [skills.sh](https://skills.sh/) | Defense-in-depth, input sanitization, CSRF/CORS policies, TLS enforcement. |
| `security-audit` | Community Ecosystem | [skills.sh](https://skills.sh/) | Static code security review, secret leak detection, dependency auditing. |
| `security-diff-scan` | Community Ecosystem | [skills.sh](https://skills.sh/) | Pull request and commit diff vulnerability scanning before merging. |
| `owasp-top-10-testing` | [Strix Security](https://github.com/usestrix) | [usestrix/strix](https://skills.sh/usestrix/strix/owasp-top-10-testing) | OWASP API Top 10 auditing, SQLi, SSRF, Broken Object Level Authorization (BOLA/IDOR). |
| `api-security-testing` | [Strix Security](https://github.com/usestrix) | [usestrix/strix](https://skills.sh/usestrix/strix/api-security-testing) | API endpoint penetration tests, authorization bypass checks, fuzz testing. |
| `vibesec` | Community Ecosystem | [skills.sh](https://skills.sh/) | Automated web application security auditing and safe remediation. |

---

## 🤝 Attribution & Thanks
Special thanks to the authors and open-source contributors:
- **[Jeff Allan](https://github.com/Jeffallan)** for the exceptional Claude Skills collection.
- **[Affaan M](https://github.com/affaan-m)** for the battle-tested engineering collections (`docker-patterns`, `redis-patterns`).
- **[Grafana Labs](https://github.com/grafana)** for the k6 load testing skill.
- **[Samuel Berthe (samber)](https://github.com/samber)** for the developer platform & gRPC skills.
- **[Mindrally](https://github.com/mindrally)** for the Kafka and RabbitMQ messaging skills.
- **[W.S. Hobson](https://github.com/wshobson)** for database migration best practices.
- **[Strix Security](https://github.com/usestrix)** for OWASP and API penetration testing skills.
- **[Vercel Labs](https://github.com/vercel-labs)** & **[Supabase](https://github.com/supabase)** for storage, queue, and database skills.
- The entire **[skills.sh](https://skills.sh)** ecosystem.
