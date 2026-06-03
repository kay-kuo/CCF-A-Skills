# CCF-A-Skills

面向 **CCF-A 类会议/期刊** 的科研 Agent Skill Bundle，参考 `nature-skills` 的“可安装 skill 目录”思想，但将工作流从 Nature/high-impact scientific storytelling 迁移为计算机/AI 顶会顶刊的 **问题定义、方法贡献、实验闭环、可复现性、审稿防御**。

> 重要说明：本项目与 CCF、中国计算机学会、任何会议/期刊官方组织无隶属关系。`CCF-A` 在本项目中仅指面向计算机顶级会议/期刊写作与投稿流程的工作流适配。CCF 官方目录是推荐列表，不应被简单作为学术评价依据；请始终以目标会议/期刊当年的官方 author instructions 为准。

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

## Core philosophy

CCF-A-Skills 的核心不是“把文字写得更像论文”，而是让 Agent 始终围绕下面这条链路工作：

```text
Problem → Challenge → Method → Claim → Evidence → Reproducibility → Reviewer Defense
```

每个 skill 都遵守同一套约束：

1. **Evidence-first**：不得编造实验结果、引用、数据集规模、p-value、baseline、代码链接、行号、图号。
2. **Claim-evidence alignment**：每个强 claim 都必须对应实验、理论、消融、case study 或限定语。
3. **Reviewer-aware**：输出不仅要好看，还要提前暴露 reviewer 可能攻击的地方。
4. **Venue-aware**：不同 venue 的写法不同；NeurIPS/ICML/ICLR 更重视方法、理论、可复现性；CVPR/ICCV/ECCV 更重视视觉结果、benchmark 和 ablation；ACL/EMNLP 更重视任务设定、数据、error analysis；SIGIR/KDD/WWW 更重视系统、用户/日志数据、实证严谨性；TMI/MedIA/TPAMI 等期刊更重视完整性和 revision chain。
5. **Installable folder unit**：每个 `skills/ccf-*` 目录都是一个可安装 skill 单元，不要只复制 `SKILL.md`。

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

## Non-goals

- 不替代真实实验、统计分析、伦理审查和导师/合作者判断。
- 不保证投稿录用。
- 不提供伪造 citation、伪造结果、伪造 reviewer response 的能力。


## Official-source discipline

本仓库内置的是 CCF-A 论文 workflow，不是任何会议/期刊官方规则数据库。凡涉及当年 deadline、页数、匿名政策、rebuttal 字数、supplementary、checklist、artifact policy，都必须以目标 venue 的最新官方 author instructions 为准。

参考的公共规范方向包括：CCF 官方推荐目录说明、NeurIPS checklist 对 reproducibility/transparency/ethics/societal impact 的强调、ICML author instructions 对 code/reproducibility 的要求，以及 ACM artifact review/badging 对 artifact、repeatability/reproducibility/replicability 的术语体系。

## License

MIT License. See `LICENSE`.
