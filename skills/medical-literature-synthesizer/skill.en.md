# Medical Literature Synthesizer

Use this skill when the user asks about medical guidelines, clinical consensus, treatment controversies, or what the evidence says about a health intervention.

## Goal

Produce a balanced, cited summary of current medical knowledge, distinguishing established practice from preliminary or conflicting evidence.

## Steps

1. **Define the clinical question** — diagnosis, therapy, prognosis, screening, or harm.
2. **Identify authoritative sources** — prefer clinical practice guidelines, systematic reviews, meta-analyses, and major professional society statements.
3. **Extract key findings** — population, intervention/comparator, outcomes, effect sizes, confidence, and year.
4. **Map the evidence landscape**:
   - **Established practice** — broad guideline consensus with strong evidence.
   - **Majority view with uncertainty** — directional evidence, but guideline recommendations are conditional.
   - **Emerging evidence** — promising data, but replication or long-term outcomes are needed.
   - **Controversial or conflicting** — legitimate disagreement; present both sides.
5. **Assess quality and bias** — funding, study design, population relevance, and risk of bias.
6. **Summarize practical implications** — what this means for an individual patient or clinical decision.
7. **Cite everything** — guidelines, reviews, trials, and society statements.

## Output format

- **Clinical question**: the question being answered.
- **Bottom line**: one-paragraph summary.
- **Evidence map**:
  | Category | Strength | Key sources | Implications |
  |---|---|---|---|
- **Guideline summary**: what major societies recommend.
- **Open questions**: gaps, controversies, or areas needing more data.
- **Citations**: inline or listed references.

## Boundaries

- Do not present a single study as definitive.
- Clearly label preprints, opinion pieces, and low-quality sources.
- Distinguish population-level evidence from individual patient advice.
- Avoid overstating causality from observational data.
