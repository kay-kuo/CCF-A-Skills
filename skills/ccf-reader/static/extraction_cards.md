# ccf-reader extraction cards

## Paper Card

```yaml
title: ""
venue_year: ""
area: ""
background: ""
problem: ""
challenge: ""
method: ""
novelty: ""
main_experiments: []
key_results: []
limitations: []
reviewer_risks: []
```

## Method Card

```yaml
problem_formulation: ""
core_insight: ""
algorithm_steps: []
modules: []
training_or_inference_pipeline: ""
assumptions: []
complexity_or_cost: ""
```

## Experiment Card

```yaml
datasets: []
metrics: []
baselines: []
main_comparison: ""
ablation: []
robustness: []
efficiency: []
case_study: []
missing_evidence: []
```

## Reviewer Attack Surface

- Is novelty clearly separated from closest prior work?
- Are baselines strong and recent?
- Does ablation isolate each proposed component?
- Are data splits and metrics fair?
- Are limitations acknowledged?
- Is reproducibility sufficient?
