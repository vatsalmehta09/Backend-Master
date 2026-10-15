# ADR-004: Mandatory Plan-Then-Execute Hard Gate (Phase 2 Hard Stop)

## Status
Accepted

## Date
2026-10-15

## Context
A chronic failure mode in autonomous coding agents is premature code generation:
1. The agent starts writing implementation files immediately upon reading a prompt, making unexamined assumptions about schemas, libraries, and architecture.
2. If those assumptions are wrong, substantial code must be rewritten or discarded.
3. In backend systems, premature code can cause irreversible data corruption, non-blocking schema migration bugs, or security vulnerabilities (e.g. unauthenticated routes, missing rate limits).

## Decision
Enforce a **Mandatory Hard-Gated 3-Phase Plan-Then-Execute Workflow** with a strict Phase 2 Hard Stop:

1. **Phase 1: Context Exploration & Brainstorming**:
   - Classify task scope out loud (Spike, Bounded, or Architectural).
   - Ingest $\le 3$ relevant curated sub-skills.
   - Present 2–3 architectural approaches with clear trade-offs, or an in-chat design for bounded tasks.
2. **Phase 2: Strict User Verification Gate (HARD STOP)**:
   - **Absolute Rule**: The agent MUST halt execution and wait for the human engineer's explicit approval before generating any production code or editing repository files.
   - Short illustrative conceptual snippets in chat are permitted to explain ideas, but zero production implementation is allowed.
   - Enforce an explicit **Rationalization Counter-Table** and **Red Flags** list to counteract typical agent rationalizations (*"The change was small"*, *"User seemed in a hurry"*).
3. **Phase 3: Execution & Superpowers Verification**:
   - Bounded tasks execute via Inline Mode + `test-driven-development` (RED-GREEN-REFACTOR).
   - Architectural tasks execute via Sub-Agent Mode + `writing-plans`.
   - All tasks undergo `verification-before-completion` before finishing.

## Alternatives Considered

### Alternative 1: Single-Turn Code Generation with Explanation
- **Pros**: Fewer turns, quicker response for trivial tasks.
- **Cons**: Bypasses developer review, risks generating bad architecture, frequently introduces hidden bugs that take longer to debug later.
- **Rejected**: Too high risk for production backend code.

### Alternative 2: Soft Warning / Advisory Planning
- **Pros**: Agent recommends a plan but can proceed if confident.
- **Cons**: LLMs routinely bypass soft warnings due to overconfidence, leading to unreviewed code writes.
- **Rejected**: A hard stop is necessary to guarantee predictable, safe behavior.

## Consequences
- Guaranteed human-in-the-loop validation for every architectural and structural change.
- Dramatic reduction in wasted tokens and discarded code diffs.
- Alignment with the `superpowers` framework (`brainstorming` $\rightarrow$ `test-driven-development` $\rightarrow$ `verification-before-completion`).
