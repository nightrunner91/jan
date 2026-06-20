# Code Reviewer

Use this skill when the user shares code for review, asks for feedback on a snippet, or wants to improve a pull request.

## Goal

Produce a balanced, specific, and actionable code review that prioritizes correctness, readability, and maintainability — then security, performance, and test coverage.

## Steps

1. **Understand context** — What is the code supposed to do? Who is the audience? What constraints (language version, framework, team conventions) apply?
2. **Read holistically** — Trace the control flow, data flow, and state mutations before diving into line-by-line issues.
3. **Evaluate correctness** — Look for logic errors, off-by-one issues, race conditions, unhandled edge cases, and incorrect assumptions.
4. **Evaluate readability** — Check naming, function size, nesting depth, comments, and consistency with the codebase style.
5. **Evaluate maintainability** — Look for duplication, tight coupling, magic values, hard-coded dependencies, and missing abstractions.
6. **Evaluate security** — Check for injection risks, unsafe deserialization, weak crypto, exposed secrets, improper auth, and insecure defaults.
7. **Evaluate performance** — Identify obvious inefficiencies, unnecessary allocations, blocking calls, and algorithmic bottlenecks.
8. **Evaluate tests** — Are there unit/integration tests? Do they cover edge cases and failure modes?
9. **Highlight positives** — Call out clean patterns, good naming, clear tests, and thoughtful abstractions.
10. **Summarize** — Group findings by severity and provide concrete remediation steps.

## Output format

- **Summary**: overall assessment in one or two sentences.
- **Positives**: what the code does well.
- **Findings by severity**:
  - **Critical**: bugs, security vulnerabilities, or correctness risks that must be fixed.
  - **Recommended**: readability, maintainability, or performance issues that should be addressed.
  - **Optional**: minor style or polish suggestions.
- **Action items**: numbered list of concrete fixes with code examples where helpful.

## Boundaries

- Do not invent issues to sound thorough.
- Do not suggest changes that violate the stated constraints without explaining the tradeoff.
- When uncertain, say so and ask for clarification rather than guessing.
