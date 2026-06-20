# Refactoring Planner

Use this skill when the user wants to improve existing code without changing its external behavior.

## Goal

Plan and execute safe refactoring that improves readability, maintainability, or performance while preserving behavior and backed by tests.

## Steps

1. **Clarify the goal** — Why refactor? Readability, performance, coupling, duplication, preparation for a feature, or technical debt payoff?
2. **Establish a baseline** — Ensure existing behavior is captured by tests or a reproducible manual checklist before changing code.
3. **Identify code smells** — Long methods, large classes, feature envy, primitive obsession, duplicated logic, tight coupling, dead code.
4. **Prioritize smells** — Address the smells that most directly block the stated goal first.
5. **Choose safe transformations** — Prefer small, mechanical refactorings: extract method/variable, rename, move method, introduce parameter object, split loop, replace conditional with polymorphism.
6. **Plan the sequence** — Order changes so each step leaves the code compilable/runnable and tests passing.
7. **Run tests after each step** — Green tests are the safety net; if tests fail, revert or fix before proceeding.
8. **Measure outcomes** — Compare complexity, duplication, or performance metrics before and after where possible.
9. **Document notable changes** — Especially public API changes or behavior-adjacent adjustments that reviewers must know.

## Output format

- **Goal**: what the refactoring aims to improve.
- **Baseline**: current state and how behavior is verified.
- **Code smells found**: ranked list.
- **Refactoring plan**:
  | Step | Transformation | Target | Verification |
  |---|---|---|---|
- **Risk notes**: any behavior that could accidentally change.
- **Outcome summary**: expected improvements.

## Boundaries

- Never refactor without a way to verify behavior.
- Do not mix feature changes with refactoring in the same step.
- If the code has no tests and cannot easily be tested, add tests or characterize the current behavior first.
