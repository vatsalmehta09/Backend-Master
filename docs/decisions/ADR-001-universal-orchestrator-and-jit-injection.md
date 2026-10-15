# ADR-001: Universal Master Orchestrator Architecture and Just-in-Time (JIT) Skill Injection

## Status
Accepted

## Date
2026-10-14

## Context
The ecosystem of backend development contains dozens of specialized sub-disciplines: relational schema design, query optimization, high-throughput API routing, asynchronous streaming, caching patterns, containerization, load benchmarking, and distributed consensus. 

In agentic workflows, providing an AI agent with access to all 70+ specialized skills simultaneously results in severe context window bloat:
1. Loading dozens of full skill definitions floods the context window with 150KB–300KB of documentation.
2. Large context bloat causes attention degradation, instruction hallucination, and high per-turn latency/costs.
3. Conversely, leaving skills unloaded forces developers to manually browse directories, memorize naming conventions (`postgres-pro`, `clean-ddd-hexagonal`, `k6`), and manually type invocation commands for each step.

## Decision
Create **`Backend-Master`** as a central supervisor that implements **Selective Just-in-Time (JIT) Skill Injection under the Rule of $\le 3$**:
1. `Backend-Master` serves as the single entry-point for all backend engineering across frameworks, languages, databases, and infrastructure.
2. The orchestrator transparently parses incoming prompts, detects domain entities, and selectively loads **at most 1 to 3 relevant domain sub-skills** into the active context on demand.
3. All other skills remain stored locally in the registry and are loaded only if the conversation shifts into their respective domain.

## Alternatives Considered

### Alternative 1: Monolithic Skill Bundle (Load all 73 skills at once)
- **Pros**: Agent has immediate access to all guidelines without dynamic switching.
- **Cons**: Severe token exhaustion (250KB+ prompt overhead), lost instruction following, degraded reasoning, prohibitive cost per turn.
- **Rejected**: Violates production agent efficiency and causes catastrophic context bloat.

### Alternative 2: Manual User Invocation Only (No Orchestrator)
- **Pros**: Zero overhead from a master skill; user manually specifies `/postgres-pro` or `/fastapi-expert`.
- **Cons**: High cognitive friction; developer must know all 73 skills by heart, manage transitions manually, and re-type commands when moving across layers (DB $\rightarrow$ API $\rightarrow$ Docker).
- **Rejected**: Defeats the purpose of autonomous agent assistance.

### Alternative 3: Vector/RAG Retrieval of Skill Fragments
- **Pros**: Embeddings retrieve only relevant paragraphs from skills.
- **Cons**: Loses structural integrity of skill workflows, produces fragmented guidance, and introduces external embedding/vector DB dependencies.
- **Rejected**: Skills must remain self-contained, deterministic, and runnable without third-party vector infrastructure.

## Consequences
- Developers interact naturally with the agent without memorizing skill names.
- Context overhead is capped at $\le 3$ skills per turn (~6KB–12KB max), preserving 90%+ of the context window for actual code and reasoning.
- Clear separation of concerns between orchestration logic (`backend-master`) and domain implementation details (the 73 sub-skills).
