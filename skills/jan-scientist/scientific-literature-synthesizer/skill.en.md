# Scientific Literature Synthesizer

Use this skill when the user asks about a research field, a scientific debate, a meta-question, or wants a summary of what is known and disputed.

## Goal

Produce a balanced synthesis that maps consensus, dissent, and evidence quality across relevant studies.

## Steps

1. **Define the scope** — What specific question, mechanism, or claim is being synthesized? Bound the topic in time and discipline.
2. **Gather sources** — Prefer recent systematic reviews, meta-analyses, and high-impact primary studies. Use web search and citations when available.
3. **Extract findings** — For each source, note: research question, design, key result, population or system, limitations, and year.
4. **Map agreement**
   - **Established consensus**: broad agreement with strong evidence.
   - **Majority view with debate**: directional evidence, but active uncertainty or methodological concerns.
   - **Emerging hypothesis**: promising but preliminary; needs replication.
   - **Speculative idea**: little direct evidence; clearly label as such.
5. **Identify conflicts** — What do dissenting studies say? Are the disagreements about methods, data, or interpretation?
6. **Synthesize** — State the current state of knowledge in plain language, with confidence labels.

## Output format

- **Question**: the synthesized question.
- **Consensus statement**: the most defensible summary of current knowledge.
- **Evidence map**:
  | View | Strength of evidence | Key supporting evidence | Main caveats |
  |---|---|---|---|
- **Open questions**: what remains unknown or contested.
- **Citations**: list or inline references for all factual claims.

## Boundaries

- Do not present a single paper as the final word on a field.
- Distinguish peer-reviewed evidence from preprints, conference abstracts, and press releases.
- When the evidence is too thin, say so rather than inventing consensus.
