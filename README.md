<p align="center">
  <img src="assets/banner.svg" alt="Backend-Master" width="100%">
</p>

<p align="center">
  <strong>Universal Master Skill &amp; Curated Sub-Skills Repository for Agentic AI</strong><br>
  <em>(Claude Code, Gemini CLI / Antigravity, Cursor, Codex, and Agent SDKs)</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/managed__skills-65-blue?style=flat-square" alt="Skills Count">
  <img src="https://img.shields.io/badge/license-MIT-green?style=flat-square" alt="License">
  <img src="https://img.shields.io/badge/architecture-Clean%20Hexagonal-blueviolet?style=flat-square" alt="Architecture">
  <img src="https://img.shields.io/badge/orchestrator-active-emerald?style=flat-square" alt="Status">
</p>

---

> [!WARNING]
> ### 🛡️ Community Synthesis & Engineering Review Disclaimer
> **Backend-Master** aggregates, synthesizes, and orchestrates open-source agent skills and best practices from leading engineers across the agent ecosystem.
> 
> While these patterns are battle-tested and curated for high quality, **they are not guaranteed to be universally correct for every specific production environment without developer review**.
> 
> **MANDATORY POLICY**: Developers and AI agents using this orchestrator must review all architectural proposals, database migrations, and code diffs before applying them to production. Detailed attributions and links are documented in [**`REFERENCES.md`**](REFERENCES.md).

---

## ⚡ What is Backend-Master?

Instead of forcing developers to remember and manually invoke dozens of distinct skills (`clean-ddd-hexagonal`, `fastapi-expert`, `postgres-pro`, `docker-patterns`, `temporal-developer`, `k6`, `kafka-development`, etc.), **`backend-master`** acts as a **dynamic session supervisor and orchestrator**:

1. **Flexible & Dynamic Auto-Activation**: Activates automatically whenever any backend engineering task is detected in the conversation (APIs, schemas, databases, queues, architectures, Docker, testing, performance, or security).
2. **Hardcoded Plan-Then-Execute Gate**: Strictly enforces a 3-phase discipline (Context Exploration $\rightarrow$ **Wait for User Verification** $\rightarrow$ Execute Only After Approval). Zero unapproved code changes!
3. **Dual Execution Engine (Inline vs. Sub-Agent)**:
   - **Inline Development**: For focused, bounded, single-service, or single-file edits.
   - **Sub-Agent Development**: For large refactors, cross-cutting multi-service updates, and parallel scaffolding using background subagents.
4. **Ponytail Discipline & Dynamic Level Switching**: Automatically applies **`ponytail`** to enforce YAGNI and prevent bloat. Switches dynamically between **Full** (clean modular architecture) and **Ultra** (YAGNI extremist: deletes before adding, avoids single-impl interfaces).
5. **Superpowers & Brainstorming Integration**: Mandatorily invokes `brainstorming` to explore context and present 2–3 trade-offs before touching code.
6. **Selective Just-in-Time Injection**: Loads **only the top 1–3 relevant sub-skills** to preserve context window capacity while enforcing strict domain standards.
7. **Transparent Status Banner**:
   ```
   ⚡ [backend-master: AUTO|ACTIVE] [ponytail: full|ultra] Loaded skills: [<skill-1>, <skill-2>]
   ```

---

## 🔒 The Hardcoded Workflow Gate

Every backend task follows this mandatory 3-phase flow:

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

---

## 🚀 Quick Install

### With `npx skills`
```bash
npx skills add vatsalmehta09/Backend-Master -g -y
```

### Manual Installation
Clone or copy [`SKILL.md`](SKILL.md) directly into your agent's skills directory:

- **Universal / Antigravity / Gemini CLI:** `~/.agents/skills/backend-master/SKILL.md`
- **Claude Code:** `~/.claude/skills/backend-master/SKILL.md`
- **Cursor:** `~/.cursor/skills/backend-master/SKILL.md`
- **Codex:** `~/.codex/skills/backend-master/SKILL.md`

---

## 🕹️ Usage & Commands

| Command | Action |
|---|---|
| Auto-Detection (Default) | Automatically triggers on any prompt containing backend architecture, APIs, databases, or workflows. |
| `/backend-master active` | **Locks Persistent Active Mode** for the entire session. |
| `/backend-master <task>` | Routes and executes a single backend task without locking persistent mode. |
| `/backend-master status` | Displays the current activation state, ponytail level, and recently loaded sub-skills. |
| `/backend-master off` | Deactivates persistent mode; returns to default model behavior. |
| Direct Sub-Skill Call (e.g. `/postgres-pro`, `/k6`) | Direct sub-skill calls are honored and integrated into the orchestrator context seamlessly. |

---

## 🧠 Capability Matrix & Curated Sub-Skills (65 Skills)

This repository contains **Backend-Master** and its **65 curated sub-skills**, covering the complete lifecycle of backend engineering:

| Category | Contained Skills | Focus Areas |
|---|---|---|
| **Core Architecture & DDD** | [`clean-ddd-hexagonal`](skills/clean-ddd-hexagonal), [`backend-patterns`](skills/backend-patterns), [`architecture-patterns`](skills/architecture-patterns), [`microservices-architect`](skills/microservices-architect) | Domain-driven design, ports & adapters, CQRS, event sourcing, microservice boundaries. |
| **API, Protocols & IPC** | [`api-and-interface-design`](skills/api-and-interface-design), [`graphql-architect`](skills/graphql-architect), [`api-designer`](skills/api-designer), [`rest-api`](skills/rest-api), [`websocket-engineer`](skills/websocket-engineer), [`websockets`](skills/websockets), [`public-grpc-api-design`](skills/public-grpc-api-design) | OpenAPI/Swagger, Apollo Federation, Protobuf IDL, streaming gRPC, WebSockets, idempotency. |
| **Databases, Caching & Migrations** | [`sql-pro`](skills/sql-pro), [`postgres-pro`](skills/postgres-pro), [`database-optimizer`](skills/database-optimizer), [`database-migration`](skills/database-migration), [`redis-patterns`](skills/redis-patterns), [`supabase-postgres-best-practices`](skills/supabase-postgres-best-practices), [`django-storages-s3`](skills/django-storages-s3), [`runtime-cache`](skills/runtime-cache), [`vercel-storage`](skills/vercel-storage) | Zero-downtime migrations, `EXPLAIN ANALYZE`, Redlock, cache-aside, Postgres JSONB/RLS. |
| **Languages & Frameworks** | [`python-pro`](skills/python-pro), [`fastapi-expert`](skills/fastapi-expert), [`django-expert`](skills/django-expert), [`managing-python-dependencies`](skills/managing-python-dependencies), [`nestjs-expert`](skills/nestjs-expert), [`golang-pro`](skills/golang-pro), [`rust-engineer`](skills/rust-engineer), [`spring-boot-engineer`](skills/spring-boot-engineer), [`csharp-developer`](skills/csharp-developer), [`rails-expert`](skills/rails-expert), [`laravel-specialist`](skills/laravel-specialist), [`php-pro`](skills/php-pro), [`micro`](skills/micro) | FastAPI, Django, NestJS, Go, Rust Axum/Actix, Spring Boot 3, .NET Core, Ruby on Rails, Laravel. |
| **Workflows, Queues & Streaming** | [`temporal-developer`](skills/temporal-developer), [`temporal-cloud-setup`](skills/temporal-cloud-setup), [`temporal-ops`](skills/temporal-ops), [`temporal-serverless`](skills/temporal-serverless), [`kafka-development`](skills/kafka-development), [`rabbitmq-development`](skills/rabbitmq-development), [`vercel-queues`](skills/vercel-queues), [`rag-architect`](skills/rag-architect) | Apache Kafka, RabbitMQ, Temporal sagas & deterministic replay, background workers, pgvector. |
| **Containerization, Cloud & SRE** | [`devops-engineer`](skills/devops-engineer), [`docker-patterns`](skills/docker-patterns), [`cloud-architect`](skills/cloud-architect), [`shipping-and-launch`](skills/shipping-and-launch), [`ci-cd-and-automation`](skills/ci-cd-and-automation), [`git-workflow-and-versioning`](skills/git-workflow-and-versioning), [`deprecation-and-migration`](skills/deprecation-and-migration), [`observability-and-instrumentation`](skills/observability-and-instrumentation), [`monitoring-expert`](skills/monitoring-expert), [`sentry`](skills/sentry), [`kubernetes-specialist`](skills/kubernetes-specialist), [`terraform-engineer`](skills/terraform-engineer), [`sre-engineer`](skills/sre-engineer) | Multi-stage Dockerfiles, Docker Compose, AWS/GCP/Azure Well-Architected, canary deployments, OpenTelemetry. |
| **Testing, Load Profiling & QA** | [`test-master`](skills/test-master), [`k6`](skills/k6), [`performance-optimization`](skills/performance-optimization) | Unit/integration testing, mock architectures, k6 API load testing, latency & CPU flamegraphs. |
| **Security, Auth & Hardening** | [`auth`](skills/auth), [`oauth`](skills/oauth), [`security-and-hardening`](skills/security-and-hardening), [`security-audit`](skills/security-audit), [`security-diff-scan`](skills/security-diff-scan), [`owasp-top-10-testing`](skills/owasp-top-10-testing), [`api-security-testing`](skills/api-security-testing), [`vibesec`](skills/vibesec) | OAuth2/OIDC, JWT rotation, OWASP API Top 10, BOLA/IDOR prevention, penetration audits. |

---

## 📚 References & Upstream Attributions
See [**`REFERENCES.md`**](REFERENCES.md) for complete details on upstream repositories, authors, package URLs on `skills.sh`, and license notes.

---

## 🔄 Bidirectional Sync & Maintenance Automation

The repository includes a dedicated sync tool in [`scripts/sync-skills.ps1`](scripts/sync-skills.ps1) and a test suite in [`scripts/test-sync.ps1`](scripts/test-sync.ps1):

- **Update a skill locally**: Run `scripts/sync-skills.ps1` — detects the edit and automatically commits/pushes the changes to GitHub.
- **Delete a skill locally**: Run `scripts/sync-skills.ps1` — safely prunes the skill from the GitHub repository.
- **Dry-run preview**:
  ```powershell
  pwsh scripts/sync-skills.ps1 -DryRun
  ```
- **Run the test suite**:
  ```powershell
  pwsh scripts/test-sync.ps1
  ```

---

## 📄 License
MIT License. Created & curated by [Vatsal Mehta](https://github.com/vatsalmehta09).
