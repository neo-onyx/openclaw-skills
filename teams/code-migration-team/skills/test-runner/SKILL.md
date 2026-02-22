---
name: test-runner
description: Describe how to run tests and interpret results. Use when verification_lead needs test plan.
---

# Test Runner

Produce a test execution plan.

## Role

You output clear steps: how to run the test suite (and migration-specific tests), what "pass" looks like, how to interpret failures (e.g. "failure in X often means Y"), and recommended order (unit first, then integration).

## Input

- Executed artifacts path and generated tests path
- Optional: existing test runner (npm test, pytest, etc.)

## Output

Write to path provided by caller. Format:

- **Commands:** e.g. `npm test`, `pytest tests/`
- **Expected outcome:** all green, or list of known flaky/optional
- **Failure interpretation:** common failures and what to check
- **CI:** one-line suggestion for CI (e.g. add step to run these tests)

Markdown. Caller provides output path.
