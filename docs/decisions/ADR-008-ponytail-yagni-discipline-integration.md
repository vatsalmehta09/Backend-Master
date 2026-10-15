# ADR-008: Ponytail YAGNI Engineering Discipline Integration

## Status
Accepted

## Date
2026-10-14

## Context
AI coding agents are heavily biased toward premature abstraction and structural bloat:
1. Generating multi-layered factory patterns, single-implementation interfaces, and speculative wrapper classes for straightforward logic.
2. Introducing third-party dependencies (npm/pip packages) for trivial operations already supported by native standard libraries.
3. Adding distributed caches (Redis) and queues (Kafka, RabbitMQ) when an in-process map or simple database index would easily satisfy throughput requirements.

This increases technical debt, degrades codebase maintainability, and slows down development velocity.

## Decision
Mandatorily integrate the **Ponytail** engineering discipline with **Dynamic Level Switching**:

1. **Normal / Full Mode (`ponytail:full`) — Default**:
   - Standard mode for feature engineering, clean architectural boundaries, and API designs.
   - Enforces standard library and native framework capabilities first before introducing external libraries.
   - Restricts abstractions to proven domain boundaries (ports & adapters, clean DDD).
2. **Ultra Mode (`ponytail:ultra`) — YAGNI Extremist**:
   - Auto-switches for bugfixes, small scripts, hotfixes, or whenever there is a temptation to over-engineer.
   - **Strict Rules**:
     - Deletes before adding.
     - Replaces complex classes with pure functions.
     - Rejects single-implementation interfaces and unnecessary wrapper layers.
     - Refuses distributed queues or caching when an in-memory or database solution suffices.
3. **Banner Visibility**:
   - Current mode is transparently surfaced in the banner: `[STM: ... | ponytail: full|ultra]`.

## Alternatives Considered

### Alternative 1: Unrestricted Code Generation
- **Pros**: Agent generates whatever comes naturally.
- **Cons**: Severe bloat, over-architected boilerplate, dependency sprawl.
- **Rejected**: Harmful to production software engineering.

### Alternative 2: Permanent Ultra Mode for All Tasks
- **Pros**: Guarantees zero bloat at all times.
- **Cons**: Too restrictive when designing legitimate multi-service architectures, enterprise domain models, or formal clean-architecture boundaries.
- **Rejected**: Dynamic switching provides appropriate discipline based on task scope.

## Consequences
- Clean, minimal diffs with maximum reliance on standard libraries and native framework tools.
- Elimination of premature microservices, speculative abstraction layers, and dependency bloat.
- Consistent code quality whether writing a 10-line hotfix or a complex domain service.
