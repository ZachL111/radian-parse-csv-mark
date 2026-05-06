# radian-parse-csv-mark

`radian-parse-csv-mark` is a Ruby project in parsers. Its focus is to implement a Ruby parsers project for csv graph analysis, using node-edge fixtures and cycle and reachability reports.

## Use Case

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Radian Parse Csv Mark Review Notes

Start with `label quality` and `token drift`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Highlights

- `fixtures/domain_review.csv` adds cases for token drift and grammar width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/radian-parse-csv-walkthrough.md` walks through the case spread.
- The Ruby code includes a review path for `label quality` and `token drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Ruby addition stays small enough to inspect in one sitting.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Future Work

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
