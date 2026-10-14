# Backend-Master: The Universal Backend Orchestrator Skill

> **Universal Master Skill for Agentic AI (Claude Code, Gemini CLI / Antigravity, Cursor, Codex, and Agent SDKs).**
> Automatically understands backend requirements, classifies architectural domains, and selectively loads only the relevant deep sub-skills on demand.

---

## ⚡ What is Backend-Master?

Instead of forcing developers to remember and manually invoke dozens of distinct skills (`clean-ddd-hexagonal`, `fastapi-expert`, `postgres-pro`, `backend-patterns`, `temporal-developer`, `api-and-interface-design`, etc.), **`backend-master`** acts as a **dynamic session supervisor**:

1. **Persistent Session Mode (`/backend-master active`)**: Locks the AI into autonomous backend routing. Every turn automatically evaluates backend patterns without having to re-invoke skills.
2. **Dynamic Capability Matrix**: Automatically analyzes your stack (Framework, Architecture, DB, Realtime, Queues, Security).
3. **Selective Just-in-Time Injection**: Loads **only the top 1–3 relevant sub-skills** to prevent context window bloat while strictly enforcing architectural rules.
4. **Transparent Notification**: Outputs an active banner displaying exactly which sub-skills were dynamically loaded to solve your request.

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

## 🧠 Capability Matrix & Sub-Skills Registry

`backend-master` orchestrates 6 primary backend domains:

```
                      ┌────────────────────────┐
                      │    /backend-master     │
                      └───────────┬────────────┘
                                  │
       ┌──────────────────────────┼─────────────────────────┐
       ▼                          ▼                         ▼
┌──────────────┐          ┌──────────────┐          ┌──────────────┐
│ Architecture │          │  APIs & Web  │          │  Databases   │
│   & Domain   │          │  Protocols   │          │  & Caching   │
├──────────────┤          ├──────────────┤          ├──────────────┤
│• clean-ddd   │          │• api-design  │          │• postgres-pro│
│• patterns    │          │• websockets  │          │• sql-pro     │
│• microservice│          │• rest-api    │          │• db-optimizer│
└──────────────┘          └──────────────┘          └──────────────┘
       │                          │                         │
       ▼                          ▼                         ▼
┌──────────────┐          ┌──────────────┐          ┌──────────────┐
│  Frameworks  │          │ Async Queues │          │  Security    │
│  & Languages │          │  & Workflows │          │ & Hardening  │
├──────────────┤          ├──────────────┤          ├──────────────┤
│• fastapi     │          │• temporal    │          │• auth / oauth│
│• django/go   │          │• rag-arch    │          │• owasp-top-10│
│• rust/spring │          │• vercel-queue│          │• vibesec     │
└──────────────┘          └──────────────┘          └──────────────┘
```

---

## 📋 The 4-Step Execution Pipeline

When a prompt arrives in active mode:
1. **Decompose & Classify**: Detect language, framework, architectural boundaries, data tier, and security posture.
2. **Selective Injection**: Read rules only from matching local sub-skills.
3. **Activation Banner**:
   ```
   ⚡ [backend-master: ACTIVE] Loaded skills: [clean-ddd-hexagonal, fastapi-expert, postgres-pro]
   ```
4. **Execution**: Implement domain-isolated, production-grade code adhering to all loaded constraints.

---

## 📄 License
MIT License. Created by [Vatsal Mehta](https://github.com/vatsalmehta09).
