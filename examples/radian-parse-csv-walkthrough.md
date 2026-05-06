# Radian Parse Csv Mark Walkthrough

This walk-through keeps the domain vocabulary close to the data instead of burying it in prose.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | token drift | 148 | ship |
| stress | grammar width | 230 | ship |
| edge | label quality | 234 | ship |
| recovery | error locality | 156 | ship |
| stale | token drift | 160 | ship |

Start with `edge` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`edge` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
