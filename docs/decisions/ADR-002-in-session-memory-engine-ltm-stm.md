# ADR-002: In-Session Memory Engine (Zero Disk Footprint, LTM vs. STM Dynamics)

## Status
Accepted

## Date
2026-10-15

## Context
AI agents collaborating on backend code need to remember architectural invariants (language, framework, database, ORM, event bus) across dozens of conversational turns. Without memory, the agent asks repetitive questions (*"What database are you using?"*) or hallucinates stack switches mid-session (e.g. suggesting Python code in an Express project).

However, traditional approaches write state files to the user's workspace (e.g. `.backend-master.json`, `.agent-state.yaml`, or temp scratchpads). This leads to:
1. Workspace clutter and unwanted modified files in Git status.
2. Stale cache problems across branches, sessions, or restarts.
3. Disk I/O overhead and synchronization bugs.

## Decision
Implement a **100% In-Session Memory Engine** maintained purely inside conversational context (zero files created on disk), governed by **temporal lifespan and volatility dynamics**:

1. **Long-Term Memory (LTM) — High Inertia (Session Anchor)**:
   - Tracks project-wide invariants: Languages, Web Frameworks, Primary DBs, Caching layers, Message Brokers, Architecture Styles.
   - High inertia: slow to change, persists across the entire session, changes *only* upon explicit migration commands (*"We are migrating from Express to Fastify"*).
2. **Short-Term Memory (STM) — Low Inertia (Rolling Few-Text Micro-Window)**:
   - Tracks the active subtask state spanning the current prompt and the last 2 to 4 related turns (proposal $\rightarrow$ feedback $\rightarrow$ approval $\rightarrow$ execution $\rightarrow$ test verification).
   - Highly volatile: automatically clears or resets when a task is completed or the user pivots.
3. **Transparent Session Banner**:
   - The agent prefixes turns with a standardized, readable banner reflecting both LTM and STM:
     ```text
     ⚡ [backend-master: ACTIVE]
        [LTM: Fastify | PostgreSQL | Redis]
        [STM: Phase 2/3 GATE | Bounded | ponytail: full] Loaded: [fastify-best-practices, redis-patterns]
     ```
4. **4-Way Prompt Intent Classification**:
   - Classifies every prompt into: Pure LTM Mutator, Pure STM Action, Dual-Intent, or Auto-Inspection on first turn.

## Alternatives Considered

### Alternative 1: Workspace State File (`.backend-master.json`)
- **Pros**: Machine-readable, persists across complete session kills.
- **Cons**: Pollutes user git repository, risks committing internal agent state, becomes desynchronized if user switches git branches manually.
- **Rejected**: Clutters user filesystem; in-session prompt memory is cleaner and zero-footprint.

### Alternative 2: No Structured Memory (Raw Context Only)
- **Pros**: Zero implementation complexity.
- **Cons**: Agent suffers from drift over long conversations, forgets established architectural constraints, and repeats questions.
- **Rejected**: Results in erratic, frustrating developer experiences.

## Consequences
- Zero file clutter in user workspaces.
- Continuous architectural coherence across turns without repetitive user prompting.
- Clear mental model separating project-level invariants (LTM) from task-level transients (STM).
