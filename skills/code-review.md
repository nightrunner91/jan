# Code Review Checklist

A structured framework for reviewing code across languages and paradigms.

## 1. Correctness

- Does the code do what it claims to do?
- Are edge cases handled (empty input, boundary values, null/undefined)?
- Are error conditions caught and handled appropriately?
- Are there any race conditions, deadlocks, or concurrency issues?

## 2. Security

- Are user inputs validated and sanitized?
- Is there any injection risk (SQL, XSS, command injection)?
- Are secrets, tokens, or credentials hardcoded?
- Are authentication and authorization checks in the right places?
- Are dependencies up-to-date and free of known vulnerabilities?

## 3. Performance

- Are there obvious algorithmic inefficiencies (nested loops, N+1 queries)?
- Are memory allocations reasonable (no leaks, no unbounded growth)?
- Is I/O properly batched or async where appropriate?
- Are caching opportunities identified?

## 4. Maintainability

- Is the code readable? Would another developer understand it in 6 months?
- Are naming conventions consistent with the project style?
- Are functions/methods doing one thing (single responsibility)?
- Is there duplicated code that should be extracted?
- Are comments necessary vs. self-documenting code?

## 5. Testing

- Are there unit tests for core logic?
- Are there integration tests for critical paths?
- Do tests cover edge cases and failure modes?
- Are tests themselves readable and maintainable?

## 6. Architecture

- Does the change fit the existing architecture pattern?
- Are abstraction boundaries respected?
- Is coupling minimized and cohesion maximized?
- Are API contracts backward-compatible (if applicable)?

## Usage

Present reviews in severity order:
- **Critical**: bugs, security holes, data loss risks
- **Major**: correctness issues, significant maintainability problems
- **Minor**: style inconsistencies, optional improvements
- **Nitpick**: personal preference, non-blocking suggestions
