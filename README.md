<p align="center">
  <img src="assets/banner.svg" alt="Backend-Master Banner" width="100%">
</p>

<p align="center">
  <strong>The Universal Backend Engineering Orchestrator &amp; Curated Skill Hub for AI Agents</strong><br>
  <em>Production Architecture, Polyglot Frameworks, Distributed Systems, Containerization, Testing &amp; Security</em>
</p>

<p align="center">
  <a href="https://github.com/vatsalmehta09/Backend-Master/actions"><img src="https://img.shields.io/badge/CI%2FCD-passing-brightgreen?style=flat-square" alt="CI/CD Status"></a>
  <a href="skills/"><img src="https://img.shields.io/badge/managed__skills-73-blue?style=flat-square" alt="Managed Skills"></a>
  <a href="#-the-7-backend-anti-patterns-zero-ai-backend-slop"><img src="https://img.shields.io/badge/anti--patterns-7%20enforced-red?style=flat-square" alt="Anti-Patterns Enforced"></a>
  <a href="#-supported-languages--dynamic-polyglot-execution"><img src="https://img.shields.io/badge/languages-8%20curated%20%2B%20dynamic-blueviolet?style=flat-square" alt="Languages"></a>
  <a href="docs/decisions/"><img src="https://img.shields.io/badge/ADRs-10%20Accepted-informational?style=flat-square" alt="ADRs"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-green?style=flat-square" alt="License"></a>
  <img src="https://img.shields.io/badge/discipline-Ponytail%20YAGNI-ff69b4?style=flat-square" alt="Ponytail Discipline">
</p>

---

## 📖 Table of Contents

- [⚡ What is Backend-Master?](#-what-is-backend-master)
- [🕹️ Commands & Usage](#️-commands--usage)
- [🎛️ Three Operating Modes (`lite` | `full` | `ultra`)](#️-three-operating-modes-lite--full--ultra)
- [🚫 The 7 Backend Anti-Patterns (Zero AI Backend Slop)](#-the-7-backend-anti-patterns-zero-ai-backend-slop)
- [🌐 Supported Languages & Dynamic Polyglot Execution](#-supported-languages--dynamic-polyglot-execution)
- [🚀 Installation & Quick Start](#-installation--quick-start)
- [📦 Curated Sub-Skills & Credits](#-curated-sub-skills--credits)

---

## ⚡ What is Backend-Master?

When AI coding agents (Claude Code, Cursor, Codex, Gemini CLI) write backend code without strict orchestrator guidance, they frequently fall into statistical traps: **monolithic God-files**, **hidden N+1 database queries**, **unparameterized SQL strings**, **blocking async event loops**, and **unhandled exceptions**.

**`Backend-Master`** is the single universal orchestrator that eliminates this hassle:

1. **Zero-Hassle Transparent Proxy**: You never need to search for, remember, or manually load dozens of specialized skills. Speak in plain English, and the orchestrator automatically detects your tech stack and injects the top 1 to 3 domain specialists on the fly.
2. **Durable Truth (`BACKEND.md`)**: Runs `/backend-master init` to record your databases, connection pool limits, migration paths, and auth patterns once—eliminating context drift across long conversations.
3. **Hard-Gated Plan-Then-Execute**: Enforces a strict 3-phase discipline (Explore $\rightarrow$ **Wait for User Verification Gate** $\rightarrow$ Execute with TDD). Under no circumstance is unreviewed code written.
4. **Standalone Replicas**: Packages **73 curated open-source sub-skills** directly in [`skills/`](skills/) covering 8 core domains.

---

## 🕹️ Commands & Usage

All commands use the unified `/backend-master <command> [target]` syntax, where `[target]` is an optional path, service, endpoint, or query:

```bash
/backend-master audit services/auth           # Audit security, SQLi, and pool leaks
/backend-master test src/controllers/order    # Scaffold unit + integration tests with mocks
/backend-master harden api/v1/payments        # Add rate limiting, JWT guards, RFC 7807, and RLS
/backend-master profile queries/search.sql    # Run EXPLAIN ANALYZE & indexing strategy
/backend-master schema users                  # Design schema & zero-downtime expand/contract DDL
```

### Complete Action Command Palette

| Command | What it executes | Underlying Specialist Skills |
|---|---|---|
| `/backend-master active` | Locks persistent active orchestrator for the session (default: `full` mode). | Core Orchestrator |
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

---

## 🎛️ Three Operating Modes (`lite` | `full` | `ultra`)

`backend-master` dynamically adapts its execution depth to match your immediate velocity needs:

| Operating Mode | When to Use | Execution Behavior | Confirmation Gate |
|---|---|---|---|
| **`lite`** (`/backend-master lite`) | Quick fixes, 1-file edits, minor bug investigations | Minimal ceremony, direct code edits, instant delivery | Fast 1-line check (*"Fix X in Y. Proceed?"*) |
| **`full`** (`/backend-master full`) *(Default)* | Production features, domain modeling, migrations | Hexagonal boundaries, 2–3 architectural trade-offs, TDD | Strict Phase 2 Hard Stop (plan confirmation) |
| **`ultra`** (`/backend-master ultra`) | Technical debt refactoring, bloat elimination | **Ponytail YAGNI extremist**: deletes dead code, strips wrappers, stdlib first | Deletion diff review & confirmation |

---

## 🚫 The 7 Backend Anti-Patterns (Zero AI Backend Slop)

`backend-master` hardcodes a non-negotiable contract to prevent the standard failure modes of AI code generation:

1. 🚫 **No N+1 Queries**: Never query a database inside loops. Mandate bulk fetching (`WHERE id IN (...)`), joins, or DataLoader batching.
2. 🚫 **No Unparameterized SQL**: Zero string interpolation or concatenation in queries (`f"SELECT ... {var}"` or `"SELECT ... " + var`). All dynamic inputs must use parameterized bindings to prevent SQL injection.
3. 🚫 **No Event-Loop Blocking**: Zero synchronous blocking I/O calls (`time.sleep()`, `fs.readFileSync()`, synchronous HTTP clients) inside asynchronous handlers.
4. 🚫 **No Unbounded Pagination**: Never execute `SELECT *` without an explicit `LIMIT`. Enforce keyset / cursor pagination over large offset queries.
5. 🚫 **No Silent Error Swallowing**: Ban empty catch blocks (`except Exception: pass`, `catch (e) {}`). All errors must map to structured [RFC 7807 Problem Details](https://datatracker.ietf.org/doc/html/rfc7807).
6. 🚫 **No Hardcoded Secrets**: Zero plaintext passwords, API keys, or JWT secrets in code files. Enforce environment variable injection (`os.getenv()`, `process.env`).
7. 🚫 **No Table-Locking Migrations**: Forbid destructive, blocking DDL operations on active tables. Enforce the expand-and-contract migration pattern.

### 🧪 Deterministic Codebase Scanner
Scan your repository deterministically for these 7 anti-patterns without making an LLM API call:
```bash
python scripts/backend-detector.py [optional/target/directory]
```

---

## 🌐 Supported Languages & Dynamic Polyglot Execution

### 1. First-Class Curated Languages & Frameworks (8 Languages, 16+ Frameworks)
Dedicated sub-skills are maintained and updated for the primary backend ecosystems:

- **Python**: FastAPI, Django, Flask, asyncpg, SQLAlchemy, Celery (`python-pro`, `fastapi-expert`, `django-expert`, `flask-python`)
- **Node.js / TypeScript**: Fastify, Express, NestJS, Prisma, TypeORM (`nodejs-backend-patterns`, `fastify-best-practices`, `nestjs-expert`, `micro`)
- **Go**: Standard `net/http`, Gin, Echo, Chi, GORM, sqlx (`golang-pro`)
- **Rust**: Axum, Actix-web, Tokio, SQLx, Diesel (`rust-engineer`)
- **Java / Kotlin**: Spring Boot 3, Spring Data JPA, Hibernate, Quarkus (`spring-boot-engineer`)
- **C# / .NET**: ASP.NET Core, EF Core, Minimal APIs (`csharp-developer`)
- **Ruby**: Ruby on Rails, Sinatra, Sidekiq, ActiveRecord (`rails-expert`)
- **PHP**: Laravel, Symfony, Slim, Eloquent (`laravel-specialist`, `php-pro`)

### 2. Universal Dynamic Polyglot Engine (ANY Language or Framework)
When operating in a language or framework that does **not** have a static sub-skill (such as **Elixir / Phoenix**, **Kotlin / Ktor**, **Scala / Akka**, **C++ / Crow / Drogon**, **Swift / Vapor**, **Zig**, **Clojure / Ring**, **Deno / Fresh**, or **Bun / Elysia / Hono**):

`backend-master` executes **dynamically over the project**:
1. Inspects language manifests (`mix.exs`, `build.gradle.kts`, `CMakeLists.txt`, `Package.swift`, `project.clj`, `deno.json`) to determine runtime idioms.
2. Dynamically enforces universal invariants: Ports & Adapters separation, ACID transaction rollback, connection pool constraints, parameterized queries, and RFC 7807 error envelopes.
3. Applies runtime-native concurrency primitives (BEAM processes in Elixir, coroutines in Kotlin, virtual threads in modern Java, actors in Scala, tasks in Swift).

---

## 🚀 Installation & Quick Start

### Install via `npx skills` (Recommended)
Install globally across all supported AI coding harnesses with one command:
```bash
npx skills add vatsalmehta09/Backend-Master -g -y
```

### Manual Installation
Copy or symlink [`SKILL.md`](SKILL.md) and [`REFERENCES.md`](REFERENCES.md) into your harness's skills directory:

- **Universal / Antigravity / Gemini CLI:** `~/.agents/skills/backend-master/`
- **Claude Code:** `~/.claude/skills/backend-master/`
- **Cursor:** `~/.cursor/skills/backend-master/`
- **Codex:** `~/.codex/skills/backend-master/`

---

## 📦 Curated Sub-Skills & Credits

`backend-master` packages and coordinates **73 curated open-source sub-skills** across 8 core engineering disciplines:
1. Core Architecture, Domain-Driven Design & Microservices
2. API Design, Protocols & Inter-Service IPC
3. Databases, Caching & Zero-Downtime Data Evolution
4. Polyglot Language & Framework Specialization
5. Distributed Workflows, Message Brokers & Event Streaming
6. Containerization, Cloud Infrastructure & SRE
7. Testing Architectures, Mocking & Load Profiling
8. Defense-in-Depth Security, Auth & Hardening

👉 **[View the Complete 73 Sub-Skills Catalog](skills/README.md)**  
👉 **[View Upstream Repositories, Authors & References](REFERENCES.md)**  
👉 **[View Architecture Decision Records (10 ADRs)](docs/decisions/README.md)**

---

## 📄 License

- **License**: MIT License.
- **Maintainer**: [Vatsal Mehta](https://github.com/vatsalmehta09).
