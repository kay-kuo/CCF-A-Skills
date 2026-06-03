# Claim-Evidence Matrix

Before finalizing any manuscript section, build a matrix:

| Claim | Evidence | Location | Missing? | Reviewer risk | Fix |
|---|---|---|---|---|---|
| Method improves OOD generalization | External validation table | Table 3 | no | reviewer may ask for more domains | add robustness appendix |
| Module A is necessary | Ablation without Module A | Table 4 | partial | ablation may not isolate component | add random/control variant |

Rules:

1. One strong claim needs at least one strong evidence row.
2. If no evidence exists, weaken the claim or add TODO.
3. Every table/figure should support at least one claim.
4. Every major contribution should be visible in the Introduction and validated in Experiments.
