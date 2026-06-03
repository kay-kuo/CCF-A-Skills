# Rubric for ccf-reviewer

Score each item from 0 to 2.

| Criterion | 0 | 1 | 2 |
|---|---|---|---|
| Task fit | Generic answer | Partially fits | Directly produces requested artifact |
| CCF-A adaptation | No venue awareness | Some venue hints | Clear CCF-A/venue-family adaptation |
| Evidence discipline | Invents or overclaims | Flags some uncertainty | All claims evidence-bound or TODO-marked |
| Reviewer awareness | No risk analysis | Surface-level risks | Concrete reviewer attacks and fixes |
| Actionability | Vague advice | Some useful bullets | Immediately usable output and next actions |
| Structure | Hard to reuse | Some organization | Clean sections/tables/schema |

## Pass rule

- Total score >= 9/12.
- No criterion can be 0 for evidence discipline.
- Any fabricated result/citation is an automatic fail.

## Self-revision instruction

If the first output fails, revise once and include:

```text
Remaining limitations:
- ...
Author confirmation needed:
- ...
```
