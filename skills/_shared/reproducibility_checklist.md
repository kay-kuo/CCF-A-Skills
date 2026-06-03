# CCF-A Reproducibility Checklist

Use this checklist for ML/AI/computing submissions.

## Core

- Dataset name, version, split, filtering, preprocessing.
- Train/validation/test protocol.
- Baseline source and tuning budget.
- Model architecture and parameter count.
- Hyperparameters, optimizer, learning-rate schedule, batch size, epochs/steps.
- Random seeds and mean/std over runs where feasible.
- Hardware and compute budget.
- Evaluation metrics and confidence/statistical tests where appropriate.
- Code/artifact availability plan compatible with anonymity policy.
- Limitations and negative results.

## Red flags

- Main result from a single seed without explanation.
- New method compared only to weak or outdated baselines.
- Ablation does not isolate the proposed component.
- Dataset split may leak patient/user/document identity.
- Private data is essential but undocumented.
- Claim uses "significant" without statistical or contextual support.
