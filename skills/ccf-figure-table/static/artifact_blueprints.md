# ccf-figure-table artifact blueprints

## Figure 1: Method overview

Purpose: make the method understandable in 30 seconds.

Required elements:
- Input/output.
- Main modules.
- Data flow.
- Training vs inference if different.
- Highlighted novelty.
- Avoid decorative complexity.

## Main result table

Columns:
- Dataset / split.
- Metric(s).
- Baseline groups.
- Proposed method.
- Mean ± std if available.
- Significance or best/second-best marks only if verified.

## Ablation table

Rows should isolate one design choice at a time:
- full model.
- without module A.
- without module B.
- naive/random/control variant.
- alternative design.

## Case study / error analysis

Do not cherry-pick only positive cases. Include:
- success case.
- failure case.
- explanation of why the method succeeds/fails.
- connection to claim or limitation.
