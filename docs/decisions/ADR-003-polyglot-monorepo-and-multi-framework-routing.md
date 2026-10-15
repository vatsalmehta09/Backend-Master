# ADR-003: Polyglot Monorepo and Multi-Framework Dynamic Routing

## Status
Accepted

## Date
2026-10-15

## Context
Production backend engineering frequently takes place in monorepos or multi-service repositories where different services utilize different programming languages and frameworks:
- Public API Gateway / Streaming: Node.js + Fastify or Express
- AI / Machine Learning / Vector Services: Python + FastAPI or Flask
- High-Throughput Event Ingestion: Go or Rust
- Admin Portals / Background Cron: Django, Ruby on Rails, or PHP

A rigid master orchestrator that forces a single project-wide framework lock fails in polyglot setups: if the agent assumes Python because of an ML service, it gives improper advice when modifying the Node gateway.

## Decision
Support **Multi-Framework Monorepo Flexibility** through a multi-service LTM catalog and directory-aware STM routing:

1. **Multi-Service Catalog in LTM**:
   - LTM records an architectural mapping of services:
     - `services/gateway`: Node.js + Fastify
     - `services/ai`: Python + FastAPI
     - `services/ingest`: Go
2. **Directory-Aware Context Routing**:
   - When the user's prompt or target file points to a specific subdirectory (`services/gateway/src/routes.ts`), STM engages the corresponding framework skill (`fastify-best-practices`) without affecting the rest of the project.
   - If the task switches to `services/ai/main.py`, STM dynamically swaps the active skill to `fastapi-expert`.
3. **Cross-Service Communication Orchestration**:
   - When a task involves cross-service communication (e.g. Fastify API calling a FastAPI service over gRPC), `Backend-Master` loads the protocol skill (`public-grpc-api-design`) and coordinates both framework specialists under the Rule of $\le 3$.

## Alternatives Considered

### Alternative 1: Single-Framework Constraint
- **Pros**: Simpler memory model, fewer edge cases.
- **Cons**: Completely unusable in modern microservice monorepos and multi-tier architectures.
- **Rejected**: Fails real-world polyglot requirements.

### Alternative 2: Spawning Isolated Subagents for Every Directory
- **Pros**: Total context isolation per service.
- **Cons**: Excessive subagent overhead, slow response times, lost conversational continuity for simple edits.
- **Rejected**: Directory-aware STM routing handles single-service edits inline much faster and cleaner.

## Consequences
- Clean, flexible support for polyglot systems, microservices, and monorepos.
- No cross-contamination of framework idioms between services.
- Seamless transition between services without restarting or reconfiguring the agent session.
