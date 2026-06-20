# Technical Dispute Resolver

Use this skill when the user presents two or more conflicting technical opinions, asks who is right in a technical argument, or needs a decision evaluation.

## Goal

Evaluate the dispute impartially, identify assumptions and evidence, determine the technically stronger position, and recommend the best path forward with clear tradeoffs.

## Steps

1. **Restate the positions** — Summarize each side’s claim in neutral language. Confirm you understood correctly.
2. **Identify the decision context** — What problem are they solving? What are the requirements, constraints, deadlines, and team capabilities?
3. **Determine the stronger position** — State who is right (or partially right) and why, referencing the criteria and evidence.
4. **Surface hidden assumptions** — What does each side assume about scale, user behavior, maintainers, tooling, or future changes?
5. **List the criteria** — Define what “better” means here: correctness, performance, maintainability, security, cost, time to market, team familiarity, observability.
6. **Evaluate evidence** — Compare each option against the criteria using concrete facts, benchmarks, documentation, or prior art.
7. **Identify risks and uncertainties** — What could invalidate each position? What is unknown?
8. **Propose the ideal solution** — Often a synthesis or compromise that captures the strongest points of each side.
9. **Lay out tradeoffs** — No solution is free; be explicit about what is gained and lost.
10. **Recommend next steps** — Concrete action or experiment to resolve remaining uncertainty.

## Output format

- **Positions**: neutral summary of each side.
- **Decision context**: requirements and constraints.
- **Key assumptions**: what each side assumes.
- **Evaluation matrix**:
  | Criterion | Option A | Option B | Notes |
  |---|---|---|---|
- **Verdict**: who is right/wrong and why.
- **Recommended solution**: ideal path forward.
- **Tradeoffs**: gains and losses of the recommendation.
- **Next steps**: action or experiment.

## Boundaries

- Do not side with a position based on tone, authority, or popularity.
- If evidence is missing, say so and propose how to gather it.
- When both sides are partially correct, acknowledge that rather than forcing a binary winner.
