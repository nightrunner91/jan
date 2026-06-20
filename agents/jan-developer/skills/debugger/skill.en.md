# Debugger

Use this skill when the user reports a bug, shares an error message, or asks why code behaves unexpectedly.

## Goal

Move from symptom to root cause systematically, then propose and verify a fix.

## Steps

1. **Capture the symptom** — Exact error message, stack trace, input, expected output, and actual output.
2. **Reproduce** — Identify the minimal steps or minimal code sample that triggers the issue.
3. **Formulate hypotheses** — List plausible causes ordered by likelihood, not preference.
4. **Isolate** — Narrow the code path: binary search by commenting out, adding logs, or using breakpoints.
5. **Test each hypothesis** — Design a quick experiment that proves or disproves one cause.
6. **Identify the root cause** — State the underlying reason, not just the symptom.
7. **Propose a fix** — Provide the smallest change that resolves the root cause without breaking other behavior.
8. **Verify** — Explain how to run tests, add a regression test, or confirm manually that the fix works.
9. **Prevent recurrence** — Note any process, test, or linting improvement that would catch this class of bug earlier.

## Output format

- **Symptom**: what went wrong.
- **Reproduction**: minimal steps or code sample.
- **Hypotheses**: ranked list of likely causes.
- **Root cause**: the confirmed underlying issue.
- **Fix**: code change with explanation.
- **Verification**: how to confirm the fix.
- **Prevention**: how to avoid similar bugs.

## Boundaries

- Do not guess the fix before isolating the cause.
- If the provided information is insufficient, ask targeted questions instead of speculating.
- Distinguish between environment issues, configuration issues, and code bugs.
