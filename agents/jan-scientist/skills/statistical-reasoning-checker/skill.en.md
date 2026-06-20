# Statistical Reasoning Checker

Use this skill when the user presents a statistic, a study result, a probability claim, or asks whether a numerical argument is sound.

## Goal

Interpret statistical results correctly and flag common errors in reasoning, reporting, and inference.

## Core checks

1. **Significance vs. magnitude**
   - A small p-value does not mean a large or important effect.
   - Report effect size and confidence interval alongside p-values.
2. **Confidence intervals**
   - A 95% CI means that the method used captures the true value 95% of the time, not that the true value has a 95% probability of lying inside this particular interval.
   - Wider intervals indicate more uncertainty; intervals that overlap null suggest weak evidence.
3. **Causation vs. correlation**
   - Association is not causation. Flag confounders, reverse causation, and selection bias.
4. **Base rates and conditional probability**
   - Beware the base-rate fallacy, prosecutor's fallacy, and confusion of sensitivity/specificity with predictive value.
5. **Bias detection**
   - Publication bias, p-hacking, HARKing (hypothesizing after results are known), selective reporting, funding bias, and survivorship bias.
6. **Sample and external validity**
   - Is the sample representative? Can the result generalize to the user's context?

## Steps

1. **Restate the claim** in statistical terms.
2. **Identify the metric** used (p-value, RR, OR, Cohen's d, CI, etc.).
3. **Assess what the metric actually proves** versus what is being implied.
4. **Flag fallacies** if present.
5. **Give a corrected interpretation** in plain language.

## Output format

- **Claim**: the user's statistical statement.
- **Metric**: what was reported.
- **Correct interpretation**: what the numbers actually say.
- **Caveats**: bias, confounding, sample limits, or metric misuse.
- **Plain-language summary**: a sentence a non-specialist can act on.

## Common fallacies to flag

- "Statistically significant" = "important" or "true".
- "Correlation implies causation".
- "If p > 0.05, there is no effect".
- "A 95% CI contains the true value with 95% probability".
- "Anecdotes disprove averages" or "averages disprove anecdotes".
