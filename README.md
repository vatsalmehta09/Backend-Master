<p align="center">
  <img src="assets/banner.svg" alt="Backend-Master" width="100%">
</p>

<p align="center">
  <strong>Universal Master Skill &amp; Curated Sub-Skills Repository for Agentic AI</strong><br>
  <em>(Claude Code, Gemini CLI / Antigravity, Cursor, Codex, and Agent SDKs)</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/managed__skills-54-blue?style=flat-square" alt="Skills Count">
  <img src="https://img.shields.io/badge/license-MIT-green?style=flat-square" alt="License">
  <img src="https://img.shields.io/badge/architecture-Clean%20Hexagonal-blueviolet?style=flat-square" alt="Architecture">
  <img src="https://img.shields.io/badge/orchestrator-active-emerald?style=flat-square" alt="Status">
</p>

---

## ⚡ What is Backend-Master?

Instead of forcing developers to remember and manually invoke dozens of distinct skills (`clean-ddd-hexagonal`, `fastapi-expert`, `postgres-pro`, `backend-patterns`, `temporal-developer`, `api-and-interface-design`, etc.), **`backend-master`** acts as a **dynamic session supervisor**:

1. **Persistent Session Mode (`/backend-master active`)**: Locks the AI into autonomous backend routing. Every turn automatically evaluates backend patterns without having to re-invoke skills.
2. **Mandatory Domain Skill Auto-Routing**: If ANY task touches an area with an existing local skill (APIs, databases, frameworks, security, CI/CD, production launch), it **must** load that exact skill.
3. **Ponytail Discipline & Dynamic Level Switching**: Automatically applies **`ponytail`** to enforce YAGNI, standard library first, and eliminate premature over-engineering. Switches between **Full** (default clean architecture) and **Ultra** (YAGNI extremist, one-liners over new classes/services).
4. **Superpowers & Mandatory Brainstorming (`brainstorming`)**: Hard-gates all architectural changes, new systems, or refactors—explores context, classifies the task (Spike/Bounded/Architectural), asks clarifying questions, presents 2–3 trade-offs, and secures user approval before touching code.
5. **Selective Just-in-Time Injection**: Loads **only the top 1–3 relevant sub-skills** to prevent context window bloat while strictly enforcing architectural rules.
6. **Transparent Notification**: Outputs an active banner displaying mode, ponytail intensity, and loaded skills:
   ```
   ⚡ [backend-master: ACTIVE] [ponytail: full|ultra] Loaded skills: [<skill-1>, <skill-2>]
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
| `/backend-master active` | **Activate Persistent Mode** for the whole session. All future prompts will auto-route backend skills. |
| `/backend-master <task>` | **One-Shot Task**: Routes and executes a single backend task without locking persistent mode. |
| `/backend-master status` | Displays the current activation state and recently loaded sub-skills. |
| `/backend-master off` | Deactivates persistent mode; returns to default model behavior. |
| Direct Sub-Skill Call (e.g. `/postgres-pro`) | Manual overrides are welcomed! The master skill incorporates direct calls seamlessly. |

---

## 🧠 Capability Matrix & Managed Sub-Skills (50 Curated Skills)

This repository exclusively contains **Backend-Master** and its **50 curated sub-skills**, covering backend engineering end-to-end:

| Category | Contained Skills |
|---|---|
| **Core Architecture & DDD** | [`clean-ddd-hexagonal`](skills/clean-ddd-hexagonal), [`backend-patterns`](skills/backend-patterns), [`architecture-patterns`](skills/architecture-patterns), [`microservices-architect`](skills/microservices-architect) |
| **API & Web Protocols** | [`api-and-interface-design`](skills/api-and-interface-design), [`graphql-architect`](skills/graphql-architect), [`api-designer`](skills/api-designer), [`rest-api`](skills/rest-api), [`websocket-engineer`](skills/websocket-engineer), [`websockets`](skills/websockets) |
| **Databases, Storage & Caching** | [`sql-pro`](skills/sql-pro), [`postgres-pro`](skills/postgres-pro), [`database-optimizer`](skills/database-optimizer), [`supabase-postgres-best-practices`](skills/supabase-postgres-best-practices), [`django-storages-s3`](skills/django-storages-s3), [`runtime-cache`](skills/runtime-cache), [`vercel-storage`](skills/vercel-storage) |
| **Languages & Frameworks** | [`python-pro`](skills/python-pro), [`fastapi-expert`](skills/fastapi-expert), [`django-expert`](skills/django-expert), [`managing-python-dependencies`](skills/managing-python-dependencies), [`nestjs-expert`](skills/nestjs-expert), [`golang-pro`](skills/golang-pro), [`rust-engineer`](skills/rust-engineer), [`spring-boot-engineer`](skills/spring-boot-engineer), [`csharp-developer`](skills/csharp-developer), [`rails-expert`](skills/rails-expert), [`laravel-specialist`](skills/laravel-specialist), [`php-pro`](skills/php-pro), [`micro`](skills/micro) |
| **Workflows & Distributed Jobs** | [`temporal-developer`](skills/temporal-developer), [`temporal-cloud-setup`](skills/temporal-cloud-setup), [`temporal-ops`](skills/temporal-ops), [`temporal-serverless`](skills/temporal-serverless), [`rag-architect`](skills/rag-architect), [`vercel-queues`](skills/vercel-queues) |
| **CI/CD, Git & Production Readiness** | [`shipping-and-launch`](skills/shipping-and-launch), [`ci-cd-and-automation`](skills/ci-cd-and-automation), [`git-workflow-and-versioning`](skills/git-workflow-and-versioning), [`deprecation-and-migration`](skills/deprecation-and-migration), [`observability-and-instrumentation`](skills/observability-and-instrumentation), [`monitoring-expert`](skills/monitoring-expert), [`sentry`](skills/sentry), [`kubernetes-specialist`](skills/kubernetes-specialist), [`terraform-engineer`](skills/terraform-engineer), [`sre-engineer`](skills/sre-engineer) |
| **Security, Auth & Hardening** | [`auth`](skills/auth), [`oauth`](skills/oauth), [`security-and-hardening`](skills/security-and-hardening), [`security-audit`](skills/security-audit), [`security-diff-scan`](skills/security-diff-scan), [`owasp-top-10-testing`](skills/owasp-top-10-testing), [`api-security-testing`](skills/api-security-testing), [`vibesec`](skills/vibesec) |

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
MIT License. Created by [Vatsal Mehta](https://github.com/vatsalmehta09).
