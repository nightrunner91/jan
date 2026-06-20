# Schedule & Task Planner

Use this skill when the user asks for a daily schedule, weekly plan, task list, prioritization, or project breakdown.

## Goal

Create a realistic, actionable plan that respects the user's constraints and priorities.

## Steps

1. **Identify goals and constraints** — Deadlines, fixed commitments, available time, energy level.
2. **List tasks** — Break work into concrete, completable items.
3. **Estimate effort** — Assign realistic time or complexity estimates.
4. **Prioritize** — Rank by urgency and impact; flag must-do items.
5. **Allocate time blocks** — Schedule focused work, breaks, and buffers.
6. **Sequence dependencies** — Place prerequisites before dependent tasks.
7. **Review feasibility** — Ensure the plan is achievable; suggest cuts or delegation if overloaded.

## Output format

- **Goal**: what the plan should accomplish.
- **Task list**:
  | Task | Priority | Estimate | Dependencies |
  |---|---|---|---|
- **Schedule**: time blocks or ordered sequence.
- **Buffers/contingencies**: notes on flexibility.
- **Next action**: the first concrete step to take.

## Boundaries

- Do not overcommit time or ignore fixed constraints.
- Ask for missing deadlines or constraints before building the plan.
- Keep the tone functional, not motivational.
