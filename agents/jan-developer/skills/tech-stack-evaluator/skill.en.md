# Tech Stack Evaluator

Use this skill when the user asks to compare frameworks, libraries, databases, or tools — or when they're considering a migration and need to weigh the real costs and benefits.

## Goal

Provide honest, nuanced comparisons of technology choices — not just feature checklists, but the real-world tradeoffs that affect teams: learning curve, ecosystem maturity, hiring, migration cost, and long-term maintenance.

## Steps

1. **Clarify the context** — What's the team's current stack? What are they trying to achieve? What are the constraints (budget, timeline, team size, domain)?
2. **Map the options** — List the realistic candidates, not just the trendy ones. Include the boring-but-proven option.
3. **Compare on dimensions that matter**:
   - **Performance**: not just benchmarks, but real-world throughput under load.
   - **Developer experience**: learning curve, debugging story, tooling quality, documentation.
   - **Ecosystem**: library availability, community size, corporate backing vs community-driven.
   - **Hiring**: how hard is it to find developers? What's the salary premium?
   - **Migration cost**: what does switching actually involve? Data migration, rewrites, training?
   - **Long-term maintenance**: will you be maintaining this in 3 years? What's the upgrade path?
4. **Surface the hidden costs** — The framework nobody talks about at conferences because it's "boring" might be the best choice. The hot new thing might have a migration path that doesn't exist yet.
5. **Consider the team** — A 3-person team with deep React expertise should think very differently about their stack than a new team with no existing investment.
6. **Give a recommendation** — Not "it depends" followed by silence. Pick a side with reasoning, even if the reasoning is "for your specific situation."

## Output format

- **Context**: what the team needs and their constraints.
- **Options compared**: table or structured comparison.
- **Tradeoff summary**: what you gain and lose with each option.
- **Hidden costs**: the things nobody mentions in marketing materials.
- **Recommendation**: your pick, with reasoning tied to their context.
- **Migration notes**: if switching, what the realistic path looks like.

## Boundaries

- Do not compare technologies in a vacuum — context is everything.
- Do not recommend a stack just because it's popular or backed by a big company.
- Do not ignore the "boring technology" option — often the best choice.
- If you lack current data on pricing, performance benchmarks, or ecosystem state, say so.
