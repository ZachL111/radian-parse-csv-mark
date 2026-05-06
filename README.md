# radian-parse-csv-mark

`radian-parse-csv-mark` treats parsers as a local verification problem. The Ruby implementation is intentionally narrow, but the fixtures and notes make the behavior explicit.

## Radian Parse Csv Mark Checkpoints

Treat the compact fixture as the contract and the extended examples as a scratchpad. The code should stay boring enough that a change in behavior is obvious from the test output.

## Architecture Notes

The design is intentionally direct: parse or construct a signal, score it, classify it, and verify the expected branch. This makes the repository useful for studying parsers behavior without needing a service or database unless the language project itself is SQL. The Ruby code keeps the module small and leans on Minitest for direct fixture checks.

## What This Is For

This project keeps the domain idea close to the tests. That makes it useful as a reference implementation, a small experiment, or a starting point for a more specialized tool.

## Useful Pieces

- Uses fixture data to keep error labels changes visible in code review.
- Includes extended examples for grammar boundaries, including `surge` and `degraded`.
- Documents golden examples tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.

## Case Study

The examples are meant to be readable before they are exhaustive. They cover enough variation to show how latency and risk can pull a decision below the threshold.

## Project Layout

- `lib`: library code
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Tooling

Clone the repository, enter the directory, and run the verifier. No database server, cloud account, or token is required.

## Local Workflow

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Quality Gate

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Scope

The examples cover useful edges, not every edge. A larger version would add malformed-input tests, richer reports, and deeper domain parsers.

## Expansion Ideas

- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add a short report command that prints the score breakdown for a single scenario.
- Add one more parsers fixture that focuses on a malformed or borderline input.
