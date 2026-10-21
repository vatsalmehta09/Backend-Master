# 📦 Curated Sub-Skills Catalog (73 Sub-Skills)

This directory contains complete standalone replicas of all **73 curated backend sub-skills** tracked and orchestrated by `backend-master`.

---

## 1. Core Architecture, Domain-Driven Design & Microservices
| Skill | Capabilities | Upstream Source |
|---|---|---|
| [`clean-ddd-hexagonal`](clean-ddd-hexagonal) | Bounded Contexts, Entities, Value Objects, Ports & Adapters | `anthropics/skills` |
| [`backend-patterns`](backend-patterns) | Repository/Service Separation, Transactions, Unit of Work, N+1 Avoidance | `Jeffallan/claude-skills` |
| [`architecture-patterns`](architecture-patterns) | CQRS, Event Sourcing, Circuit Breakers, Bulkheads, Scalability | `Jeffallan/claude-skills` |
| [`microservices-architect`](microservices-architect) | Distributed Sagas, Outbox Pattern, Event-Driven Topologies | `Jeffallan/claude-skills` |

## 2. API Design, Protocols & Inter-Service IPC
| Skill | Capabilities | Upstream Source |
|---|---|---|
| [`api-and-interface-design`](api-and-interface-design) | Contract-First API Design, Idempotency Keys, Cursor Pagination | `anthropics/skills` |
| [`api-designer`](api-designer) | OpenAPI / Swagger 3.1 Specs, REST Resource Modeling | `Jeffallan/claude-skills` |
| [`rest-api`](rest-api) | HTTP Method Semantics, Status Codes, RESTful Best Practices | `zoom/skills` |
| [`graphql-architect`](graphql-architect) | Apollo Federation 2.5+, DataLoader, Schema Stitching, Subscriptions | `Jeffallan/claude-skills` |
| [`websocket-engineer`](websocket-engineer) | Real-Time Bidirectional WebSockets, Redis Pub/Sub, Room Management | `Jeffallan/claude-skills` |
| [`websockets`](websockets) | WebSocket Connection Lifecycle, Heartbeats, Reconnection | `zoom/skills` |
| [`public-grpc-api-design`](public-grpc-api-design) | Protobuf IDL, Streaming RPCs, gRPC Status Errors (`google.rpc.Status`) | `samber/developer-platform-skills` |
| [`webhook-platform-design`](webhook-platform-design) | HMAC-SHA256 Signatures, Retry Backoff with Jitter, Replay Protection | `samber/developer-platform-skills` |

## 3. Databases, Caching & Data Evolution
| Skill | Capabilities | Upstream Source |
|---|---|---|
| [`sql-pro`](sql-pro) | Relational Modeling, 3NF Normalization, Complex Joins, Composite Indexes | `Jeffallan/claude-skills` |
| [`postgres-pro`](postgres-pro) | Postgres JSONB, Partial Indexes, Advisory Locks, Partitioning | `Jeffallan/claude-skills` |
| [`database-optimizer`](database-optimizer) | `EXPLAIN ANALYZE`, Slow Query Elimination, Connection Pool Sizing | `Jeffallan/claude-skills` |
| [`database-migration`](database-migration) | Zero-Downtime Expand-and-Contract Migrations, Non-Blocking DDL | `wshobson/agents` |
| [`redis-patterns`](redis-patterns) | Cache-Aside, Write-Through, Redlock Distributed Locking, Expirations | `affaan-m/ecc` |
| [`runtime-cache`](runtime-cache) | Multi-Tier Distributed Caching, Cache Invalidation, Stampede Protection | `vercel-labs/agent-skills` |
| [`mongodb-connection`](mongodb-connection) | MongoDB Replica Sets, Connection Pools, Network Resiliency | `mongodb/agent-skills` |
| [`mongodb-query-optimizer`](mongodb-query-optimizer) | MongoDB Aggregation Pipelines, Compound Indexes, Query Plans | `mongodb/agent-skills` |
| [`elasticsearch-index-design`](elasticsearch-index-design) | Elasticsearch Mappings, Analyzers, Sharding, Shard Allocation | `elastic/agent-skills` |
| [`supabase-postgres-best-practices`](supabase-postgres-best-practices) | Row Level Security (RLS), Postgres Triggers, Edge Functions | `supabase/agent-skills` |
| [`django-storages-s3`](django-storages-s3) | S3 Object Storage, Presigned URLs, MinIO/R2 Storage | `awais786/skills` |
| [`vercel-storage`](vercel-storage) | Serverless Key-Value, Blob, and Edge Config Stores | `vercel-labs/agent-skills` |

## 4. Language & Framework Specialists
| Skill | Capabilities | Upstream Source |
|---|---|---|
| [`python-pro`](python-pro) | Modern Python 3.11+, Strict Type Hinting, Asyncio Runtime | `Jeffallan/claude-skills` |
| [`fastapi-expert`](fastapi-expert) | Pydantic v2, Async Lifespan, Dependency Injection, asyncpg | `Jeffallan/claude-skills` |
| [`django-expert`](django-expert) | Django ORM QuerySets, Middleware, DRF Serializers | `Jeffallan/claude-skills` |
| [`flask-python`](flask-python) | Flask Application Factories, Blueprints, Teardown Contexts | `mindrally/skills` |
| [`managing-python-dependencies`](managing-python-dependencies) | Poetry, uv, pip-tools, Virtualenv Isolation | `anthropics/skills` |
| [`nodejs-backend-patterns`](nodejs-backend-patterns) | Express/Fastify Controllers, Services, Repositories, JWT Auth | `wshobson/agents` |
| [`fastify-best-practices`](fastify-best-practices) | Fastify High-Throughput Plugins, Encapsulation, Hooks | `mcollina/skills` |
| [`nestjs-expert`](nestjs-expert) | NestJS Modular Architecture, Guards, Interceptors, TypeORM | `Jeffallan/claude-skills` |
| [`micro`](micro) | Lightweight Asynchronous HTTP Microservices | `vercel/micro` |
| [`golang-pro`](golang-pro) | Goroutines, Channels, `context.Context`, Structured Error Handling | `Jeffallan/claude-skills` |
| [`rust-engineer`](rust-engineer) | Tokio Async Runtime, Axum, Ownership Semantics, Zero-Cost | `Jeffallan/claude-skills` |
| [`spring-boot-engineer`](spring-boot-engineer) | Spring Boot 3, Spring Data JPA, Spring Security | `Jeffallan/claude-skills` |
| [`csharp-developer`](csharp-developer) | ASP.NET Core, EF Core, LINQ, Minimal APIs | `Jeffallan/claude-skills` |
| [`rails-expert`](rails-expert) | Ruby on Rails, ActiveRecord, Sidekiq, Turbo | `Jeffallan/claude-skills` |
| [`laravel-specialist`](laravel-specialist) | Laravel Eloquent, Service Providers, Queue Workers | `Jeffallan/claude-skills` |
| [`php-pro`](php-pro) | Modern PHP 8.2+, OOP, Typed Properties, Composer | `Jeffallan/claude-skills` |

## 5. Distributed Workflows, Message Brokers & Event Streaming
| Skill | Capabilities | Upstream Source |
|---|---|---|
| [`temporal-developer`](temporal-developer) | Deterministic Workflows, Activities, Retries, Sagas | `temporalio/skill-temporal-developer` |
| [`temporal-cloud-setup`](temporal-cloud-setup) | Temporal Cloud Authentication, Namespaces, mTLS | `temporalio/skill-temporal-developer` |
| [`temporal-ops`](temporal-ops) | Temporal Cluster Operations, Worker Tuning, History Limits | `temporalio/skill-temporal-developer` |
| [`temporal-serverless`](temporal-serverless) | Serverless Temporal Workers, Event-Driven Triggers | `temporalio/skill-temporal-developer` |
| [`kafka-development`](kafka-development) | Topic Partitioning, Consumer Groups, Schema Registry | `mindrally/skills` |
| [`rabbitmq-development`](rabbitmq-development) | Exchanges (Direct/Topic/Fanout), Dead-Letter Queues (DLX), Acks | `mindrally/skills` |
| [`vercel-queues`](vercel-queues) | Async Message Delivery, Background Worker Retries | `vercel-labs/agent-skills` |
| [`rag-architect`](rag-architect) | Vector Storage (pgvector, Pinecone), Hybrid RAG | `Jeffallan/claude-skills` |
| [`ai-gateway`](ai-gateway) | Multi-Provider Model Routing, Fallback, SSE Streaming, Cost Tracking | `vercel-labs/agent-skills` |

## 6. Containerization, Cloud Infrastructure & SRE
| Skill | Capabilities | Upstream Source |
|---|---|---|
| [`devops-engineer`](devops-engineer) | Multi-Stage Dockerfiles, Docker Compose, CI/CD, GitOps | `Jeffallan/claude-skills` |
| [`docker-patterns`](docker-patterns) | Production Docker Best Practices, Layer Caching, Non-Root | `affaan-m/ecc` |
| [`cloud-architect`](cloud-architect) | AWS/GCP/Azure Well-Architected Framework, VPCs, DR | `Jeffallan/claude-skills` |
| [`shipping-and-launch`](shipping-and-launch) | Pre-Launch Checklists, Canary Rollouts, Instant Rollback | `anthropics/skills` |
| [`ci-cd-and-automation`](ci-cd-and-automation) | Automated GitHub Actions Pipelines, Quality Gates | `anthropics/skills` |
| [`git-workflow-and-versioning`](git-workflow-and-versioning) | SemVer Releases, Trunk-Based Development, Atomic Commits | `anthropics/skills` |
| [`deprecation-and-migration`](deprecation-and-migration) | API Deprecation Roadmaps, Sunsetting, Hyrum's Law | `addyosmani/agent-skills` |
| [`observability-and-instrumentation`](observability-and-instrumentation) | OpenTelemetry Distributed Tracing, RED/USE Metrics | `anthropics/skills` |
| [`monitoring-expert`](monitoring-expert) | Prometheus Metrics, Grafana Dashboards, Alerting SLOs | `Jeffallan/claude-skills` |
| [`sentry`](sentry) | Exception Capturing, Performance Tracing, Alerts | `getsentry/agent-skills` |
| [`kubernetes-specialist`](kubernetes-specialist) | Deployments, StatefulSets, Ingress, HPA, Helm Charts | `Jeffallan/claude-skills` |
| [`terraform-engineer`](terraform-engineer) | Infrastructure as Code (IaC), State Locking, Modules | `Jeffallan/claude-skills` |
| [`sre-engineer`](sre-engineer) | Site Reliability Engineering, Circuit Breakers, Chaos | `Jeffallan/claude-skills` |

## 7. Testing Architectures, Mocking & Load Profiling
| Skill | Capabilities | Upstream Source |
|---|---|---|
| [`test-master`](test-master) | Unit/Integration/E2E Test Architecture, Mock Strategies | `Jeffallan/claude-skills` |
| [`k6`](k6) | API Load Testing, Stress Testing, Throughput Benchmarks | `grafana/skills` |
| [`performance-optimization`](performance-optimization) | Bottleneck Identification, CPU Flamegraphs, N+1 Fixes | `anthropics/skills` |

## 8. Defense-in-Depth Security, Auth & Hardening
| Skill | Capabilities | Upstream Source |
|---|---|---|
| [`auth`](auth) | Password Hashing (Argon2id), Session Security | `anthropics/skills` |
| [`oauth`](oauth) | OAuth 2.0, OpenID Connect (OIDC), JWT Token Rotation | `anthropics/skills` |
| [`security-and-hardening`](security-and-hardening) | Defense-in-Depth, Input Sanitization, CSRF/CORS | `anthropics/skills` |
| [`security-audit`](security-audit) | Static Code Security Auditing, Dependency Vulnerabilities | `anthropics/skills` |
| [`security-diff-scan`](security-diff-scan) | PR & Commit Diff Vulnerability Scanning | `anthropics/skills` |
| [`owasp-top-10-testing`](owasp-top-10-testing) | OWASP API Top 10 Auditing, SQLi, SSRF, BOLA/IDOR | `usestrix/strix` |
| [`api-security-testing`](api-security-testing) | Endpoint Penetration Testing, Auth Bypass Checks | `usestrix/strix` |
| [`vibesec`](vibesec) | Automated Web Application Security Auditing | `anthropics/skills` |
