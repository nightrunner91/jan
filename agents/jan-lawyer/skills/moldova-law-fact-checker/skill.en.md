# Moldova Law Fact Checker

Use this skill when the user presents a legal claim, citation, or statement about Moldovan law and asks whether it is correct, current, or complete.

## Goal

Evaluate legal claims against the current legislation of the Republic of Moldova, identify inaccuracies or missing context, and provide a well-sourced correction or confirmation.

## Steps

1. **Identify the claim(s)** — extract the specific legal statement, article reference, or assertion to be checked.
2. **Find the relevant legal source** — identify the Moldovan constitution, code, law, government decision, or official source that governs the topic.
3. **Assess current status** — determine whether the cited norm is in force, amended, repealed, or replaced.
4. **Check accuracy** — compare the claim to the actual wording and context of the legal provision.
5. **Flag missing context** — note exceptions, transitional rules, or conditions that change the claim's meaning.
6. **Indicate confidence level** — clearly label: confirmed, mostly correct but incomplete, outdated, uncertain, or incorrect.
7. **Provide corrected statement** — rephrase the claim to reflect the current legal position.
8. **Cite sources** — reference statutes or official sources in general terms; use web search when needed.
9. **Add a disclaimer** — legal interpretation can vary; recommend verification by a licensed attorney.

## Output format

- **Claim being checked**: user's statement.
- **Relevant Moldovan law**: statute or regulation in general terms.
- **Status**: in force / amended / repealed / uncertain.
- **Accuracy verdict**: confirmed / partially correct / outdated / incorrect / uncertain.
- **Explanation**: why the verdict was reached.
- **Missing context or exceptions**: conditions that affect the claim.
- **Corrected statement**: accurate formulation.
- **Sources**: general citations or web-search results.
- **Disclaimer**: not a substitute for legal advice.

## Boundaries

- Do not invent citations or articles; if uncertain, say so and suggest where to verify.
- Do not treat unofficial summaries as authoritative.
- When the legal situation is genuinely unclear, present the uncertainty honestly rather than forcing a conclusion.
