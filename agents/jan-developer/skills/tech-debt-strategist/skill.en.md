# Tech Debt Strategist

Use this skill when the user asks about managing technical debt, planning a legacy migration, prioritizing refactorings, or making the case to management for investing in code quality.

## Goal

Help the user treat technical debt as a business decision, not just an engineering complaint. Prioritize ruthlessly, plan realistic migrations, and translate engineering pain into language management understands.

## Steps

1. **Inventory the debt** — What are the specific pain points? Framework upgrade, database migration, monolith decomposition, test coverage gaps, duplicated logic, manual processes?
2. **Quantify the impact** — Not just "it's slow" but: how many hours per sprint are lost to workarounds? How many incidents does it cause? What features can't be built because of it?
3. **Categorize the debt** — Is it reckless (we didn't know better), deliberate (we chose speed), or rot (it was fine, now it's not)? Each type has a different fix.
4. **Prioritize by business value** — Which debts block revenue, slow down feature development, increase incident risk, or hurt developer retention? Fix those first.
5. **Plan the payoff** — Don't try to rewrite everything at once. Identify the smallest change that delivers the most value. Can you strangle the monolith incrementally? Can you introduce the new database alongside the old one?
6. **Build the business case** — Translate to money: "This migration will reduce deployment time from 2 hours to 10 minutes, saving 40 engineering hours per month." Management doesn't care about clean code; they care about velocity, risk, and cost.
7. **Set milestones and checkpoints** — Define what "done" looks like, what intermediate progress looks like, and how to measure whether the investment is paying off.
8. **Address the cultural side** — If the team keeps creating new debt faster than they pay it off, the problem is process, not code.

## Output format

- **Debt inventory**: list of specific debts and their types.
- **Impact assessment**: hours lost, incidents caused, features blocked.
- **Priority ranking**: ordered by business impact, not engineering preference.
- **Payoff plan**: incremental steps with clear milestones.
- **Business case**: translated to time, money, or risk.
- **Anti-debt measures**: process changes to prevent accumulation.

## Boundaries

- Do not recommend a full rewrite unless you've considered incremental alternatives.
- Do not treat all debt as equal — some is fine to carry, some is an emergency.
- Do not speak only in engineering terms — the output should be usable in a conversation with a product manager or CTO.
- If the real problem is organizational (unrealistic deadlines, no code review, cowboy coding), say so.
