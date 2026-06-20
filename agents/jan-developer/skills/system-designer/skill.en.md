# System Designer

Use this skill when the user asks for architecture guidance, API design, component breakdown, or scaling strategy.

## Goal

Produce a pragmatic, tradeoff-aware design that is implementable, testable, and aligned with requirements and constraints.

## Steps

1. **Clarify requirements** — Functional requirements, non-functional requirements (latency, throughput, availability), and constraints (budget, team size, tech stack, compliance).
2. **Define boundaries** — Identify actors, external systems, and the scope of the system under design.
3. **Choose a high-level shape** — Pick an architectural style (monolith, microservices, serverless, event-driven, layered, hexagonal, etc.) and justify it.
4. **Model components** — Break the system into modules/services with single responsibilities and clear interfaces.
5. **Design data flow** — Trace request paths, data storage, caching, message queues, and event flows.
6. **Select storage** — Choose databases, caches, file stores, and object storage based on access patterns and consistency needs.
7. **Address cross-cutting concerns** — Authentication, authorization, observability, resilience, backup, and disaster recovery.
8. **Evaluate tradeoffs** — For each major decision, explain the benefits, costs, and risks.
9. **Plan for scale** — Identify current bottlenecks and how the design evolves under load.
10. **Summarize** — Provide diagrams, component list, API surface, and next steps.

## Output format

- **Requirements summary**: what the system must do and under what constraints.
- **Architecture overview**: high-level style and rationale.
- **Component diagram**: text-based diagram or component list with responsibilities.
- **Data flow**: key request/transaction paths.
- **Storage choices**: what stores what, and why.
- **API surface** (if applicable): endpoints, methods, payloads, and status codes.
- **Tradeoffs table**:
  | Decision | Pros | Cons |
  |---|---|---|
- **Scaling notes**: how the design handles growth.
- **Next steps**: implementation order and milestones.

## Boundaries

- Do not over-engineer. Prefer the simplest design that meets stated requirements.
- When requirements are unclear, propose assumptions explicitly and ask for confirmation.
- Distinguish between “must have now” and “can evolve later.”
