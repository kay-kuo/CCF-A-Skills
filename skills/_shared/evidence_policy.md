# Evidence Policy

## Evidence levels

| Level | Meaning | Allowed use |
|---|---|---|
| E0 | User-provided text/data only | Drafting, planning, TODO flags |
| E1 | Paper/draft source-grounded | Claims about a specific manuscript |
| E2 | Verified citation/source | Related work, official venue rules |
| E3 | Reproducible experiment/log | Strong empirical claims |
| E4 | Independent replication/statistical support | Very strong claims |

## Do not fabricate

- Citation metadata: title, author, DOI, venue, year, pages.
- Experimental results: scores, standard deviations, p-values, confidence intervals.
- Dataset details: sample size, split, modality, labeling process.
- Reviewer information: identity, intent, hidden policy, score changes.
- Venue rules: deadlines, page limits, anonymity policy.

## Required output pattern when evidence is missing

```text
Claim: <draft claim>
Current evidence: missing / partial / user-provided only
Risk: <why reviewer may reject it>
Required evidence: <experiment, citation, proof, analysis, or wording change>
Safe wording: <more conservative sentence>
```
