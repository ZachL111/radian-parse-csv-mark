# Review Journal

I treated `radian-parse-csv-mark` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its parsers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `token drift`, score 148, lane `ship`
- `stress`: `grammar width`, score 230, lane `ship`
- `edge`: `label quality`, score 234, lane `ship`
- `recovery`: `error locality`, score 156, lane `ship`
- `stale`: `token drift`, score 160, lane `ship`

## Note

The repository should be understandable without pretending it is larger than it is.
