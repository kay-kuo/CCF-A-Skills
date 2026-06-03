# CCF-A-Skills

面向 **CCF-A 类会议/期刊** 的科研 Agent Skill Bundle，参考 [`nature-skills`](https://github.com/Yuan1z0825/nature-skills) 的思想，但将工作流迁移为计算机/AI 顶会顶刊。

## Skill index

| Skill | Purpose | Typical trigger |
|---|---|---|
| `ccf-reader` | 精读论文，抽取 `background-problem-challenge-method-novelty-experiment`，并定位 reviewer risk | “精读这篇论文”、“抽取方法贡献和实验设计” |
| `ccf-writing` | 写 Introduction、Method、Experiments、Related Work、Limitations，并按 venue 风格适配 | “帮我写 NeurIPS introduction”、“改成 TPAMI 风格” |
| `ccf-figure-table` | 生成方法图、实验表、消融图、case study、error analysis 的设计与文案 | “帮我设计主结果表”、“做方法图结构” |
| `ccf-citation` | 构建 related work taxonomy、closest-work defense、missing citation risk list | “整理 related work”、“检查有没有漏引” |
| `ccf-reviewer` | 模拟 CCF-A reviewer，提前发现拒稿点、补实验点、写作漏洞 | “模拟三个 reviewer 审这篇论文” |
| `ccf-rebuttal` | 写会议 rebuttal 或期刊 response letter，逐条回应 reviewer | “帮我写 rebuttal”、“写 response letter” |
| `ccf-presentation` | 生成组会汇报、投稿 defense、oral/poster、slide narrative | “把这篇论文做成组会 PPT 大纲” |

## Repository layout

```text
CCF-A-Skills/
├── README.md
├── install.md
├── CONTRIBUTING.md
├── LICENSE
├── repo_manifest.yaml
├── scripts/
│   ├── validate_skills.py
│   ├── install_codex.sh
│   └── create_claude_wrappers.sh
├── plugins/
│   └── ccf-a-skills/
└── skills/
    ├── _shared/
    ├── ccf-reader/
    ├── ccf-writing/
    ├── ccf-figure-table/
    ├── ccf-citation/
    ├── ccf-reviewer/
    ├── ccf-rebuttal/
    └── ccf-presentation/
```

## Quick install

### Codex local skills

```bash
git clone https://github.com/<your-org>/CCF-A-Skills.git
cd CCF-A-Skills
bash scripts/install_codex.sh
```

Or manually:

```bash
mkdir -p ~/.codex/skills
cp -R skills/_shared ~/.codex/skills/
for d in skills/ccf-*; do
  cp -R "$d" ~/.codex/skills/
done
```

Restart your agent session, then invoke naturally:

```text
Use ccf-reader to精读这篇 NeurIPS 论文，抽取 background-problem-challenge-method-novelty-experiment。
```

### Claude Code wrapper

```bash
git clone https://github.com/<your-org>/CCF-A-Skills.git ~/ai-skills/CCF-A-Skills
cd ~/ai-skills/CCF-A-Skills
bash scripts/create_claude_wrappers.sh ~/ai-skills/CCF-A-Skills
```

Then ask Claude Code:

```text
Use the ccf-reviewer agent to simulate three reviewers for this draft.
```

### Other agents

If your agent supports reusable prompt files, copy the whole skill directory plus `skills/_shared/`. The minimum portable unit is:

```text
skills/_shared/
skills/ccf-<skill-name>/
```

## Typical full workflow

```text
1. ccf-reader
   精读 20-50 篇强相关论文，输出 paper cards 和 method/benchmark matrix。

2. ccf-citation
   构建 related work taxonomy、closest-work defense 和 missing citation risk list。

3. ccf-writing
   从 method/experiment 开始写，再回写 intro、abstract、limitations。

4. ccf-figure-table
   设计 main result table、ablation table、method overview、case/error analysis。

5. ccf-reviewer
   模拟 3-4 个 reviewer，发现 novelty、baseline、ablation、writing、reproducibility 风险。

6. ccf-rebuttal
   根据真实或模拟 review 写 rebuttal/response letter。

7. ccf-presentation
   生成组会汇报、internal defense、oral/poster。
```

## Quality gates

每个 skill 都包含 `tests/rubric.md`。使用前建议让 Agent 先运行对应 rubric：

```text
After producing the output, evaluate it against tests/rubric.md and revise once.
```

## Scope

本项目主要适配计算机/AI 论文，尤其是：

- ML/AI: NeurIPS, ICML, ICLR, AAAI, IJCAI
- CV: CVPR, ICCV, ECCV, TPAMI, IJCV
- NLP: ACL, EMNLP, NAACL, TACL, CL
- DM/IR/Web: KDD, WWW, SIGIR, WSDM, TKDE
- Systems/SE/PL/Security: SOSP, OSDI, SIGCOMM, ICSE, PLDI, S&P, CCS, USENIX Security 等
- Medical AI / Imaging AI: TMI, MedIA, MICCAI 等，按计算机论文逻辑而非医学临床试验逻辑处理

## License

MIT License. See `LICENSE`.
