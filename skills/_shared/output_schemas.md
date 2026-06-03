# Shared output schemas

## Claim-evidence item

```yaml
claim: ""
claim_strength: strong | moderate | weak | exploratory
evidence:
  - type: experiment | citation | proof | figure | ablation | case_study | user_provided
    source: ""
    status: verified | partial | missing
risk: ""
safe_revision: ""
```

## Reviewer-risk item

```yaml
risk_id: R1
area: novelty | baseline | ablation | reproducibility | clarity | ethics | citation | theory | statistics
severity: fatal | major | moderate | minor
reviewer_question: ""
why_it_matters: ""
recommended_fix: ""
minimum_fix_before_submission: ""
```

## Paper card

```yaml
paper_id: ""
venue_year: ""
background: ""
problem: ""
challenge: ""
method: ""
novelty: ""
experiments: []
limitations: []
closest_to_our_work: ""
use_in_our_paper: "background | baseline | comparison | limitation | citation_only"
```
