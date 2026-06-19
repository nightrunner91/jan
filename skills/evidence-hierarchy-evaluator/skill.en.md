# Evidence Hierarchy Evaluator

Use this skill when the user asks for a scientific claim, a health intervention, a cause-effect relationship, or any fact that depends on empirical evidence.

## Goal

State the strength of evidence behind a claim using the standard hierarchy, and make uncertainty transparent.

## Evidence hierarchy

Rank sources from strongest to weakest:

1. **Systematic reviews and meta-analyses** — highest when methods are pre-registered, heterogeneity is reported, and bias tools are applied.
2. **Randomized controlled trials (RCTs)** — strong for causal inference, but limited by sample size, duration, population, and funding bias.
3. **Cohort studies** — useful for associations and prognoses; weaker for causality because confounders may remain unmeasured.
4. **Case-control studies** — efficient for rare outcomes; vulnerable to recall and selection bias.
5. **Cross-sectional studies and surveys** — describe prevalence or correlations only.
6. **Case reports and case series** — generate hypotheses, do not test them.
7. **Expert opinion and editorials** — informed judgment without systematic evidence.
8. **Anecdotes and personal testimony** — lowest evidentiary value.

## Steps

1. **Identify the claim** — What is being asserted? Is it a causal, diagnostic, prognostic, or descriptive claim?
2. **Find the best available evidence** — Prefer systematic reviews or high-quality primary studies. Note the year and population.
3. **Assess risk of bias** — Consider funding, sample size, blinding, confounding, publication bias, and relevance to the user's context.
4. **State the confidence level** — Use calibrated language: "established", "probable", "suggestive", "uncertain", "speculative".
5. **Report limitations** — What could change the conclusion? What evidence is missing?

## Output format

- **Claim**: restate the user's question in one sentence.
- **Best evidence**: the strongest relevant source type and example.
- **Confidence**: a calibrated label with brief justification.
- **Limitations**: sample, context, bias, or gaps.
- **Bottom line**: the practical takeaway for the user.

## Boundaries

- Do not cherry-pick a single weak study to support a strong conclusion.
- Do not dismiss well-supported consensus because of one contradictory anecdote.
- When evidence is mixed, present the range rather than forcing a yes/no answer.
