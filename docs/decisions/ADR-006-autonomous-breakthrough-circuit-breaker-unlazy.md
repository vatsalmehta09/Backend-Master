# ADR-006: Autonomous Breakthrough Circuit Breaker (Unlazy Escalation Protocol)

## Status
Accepted

## Date
2026-10-15

## Context
During complex backend implementations, AI coding agents can encounter persistent roadblocks:
1. **Stall / Loop Loops**: Retrying the same failed unit test or syntax error repeatedly without changing strategy.
2. **Shallow / Deferred Implementations**: Leaving placeholders (`// TODO: implement later`), shallow mocks, or skipping complex edge cases due to perceived difficulty.
3. **Premature Completion**: Claiming a feature is finished when boundary conditions fail or errors remain unhandled.

Conversely, enforcing heavyweight verification protocols (such as full depth trees and multi-tier audit matrices) on every routine task introduces unnecessary latency and token overhead for simple, clear changes.

## Decision
Integrate an **Autonomous Breakthrough Circuit Breaker (`unlazy`)** that is **dormant by default and escalates only on trigger conditions**:

1. **Dormant Mode (`unlazy:standby`) — Default**:
   - For standard implementations that proceed cleanly, `unlazy` remains in standby.
   - Code is developed and tested using standard TDD practices without extra verification overhead.
2. **Escalation Triggers (`unlazy:active`)**:
   - The circuit breaker auto-escalates to active ONLY when:
     - **Stall / Loop Detected**: The agent fails the same test twice, repeats circular logic, or expends excessive turns without forward progress.
     - **Half-Done Work Detected**: Generated code contains deferred stubs, bypassed validation, or unresolved exceptions.
     - **Explicit Directive**: The user explicitly types `/unlazy` or commands the agent to *"go out of the box"*, *"give your best"*, or *"do not stop until completely verified"*.
3. **Escalation Protocol**:
   - When active, the agent immediately suspends casual shortcuts.
   - Generates strict verifiable acceptance criteria (`GATES.md`) with explicit `CHECK:` and `EXPECT:` assertions.
   - Constructs a hierarchical Depth Tree to break down complex deliverables into leaf tasks.
   - Verifies each leaf task with live execution evidence before declaring the task complete.

## Alternatives Considered

### Alternative 1: Always-Active Deep Gate Protocol
- **Pros**: Ensures maximum possible verification on every single line of code.
- **Cons**: Extremely verbose, slow, and wasteful for simple bugfixes or single-endpoint additions.
- **Rejected**: Causes excessive friction on routine work.

### Alternative 2: No Breakthrough Protocol (Rely on Default Model Behavior)
- **Pros**: Zero specialized logic.
- **Cons**: Agents give up, loop, or write fake stub implementations when facing difficult bugs or complex distributed transactions.
- **Rejected**: Unacceptable for production backend engineering.

## Consequences
- Fast, low-overhead execution for 90% of routine backend tasks.
- Instant, uncompromising depth and verification when problems become difficult or when the user demands maximum rigor.
- Complete transparency via the `[unlazy: standby|active]` indicator in the session banner.
