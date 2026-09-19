---
name: nexpulse-author-skill-rules
description: >-
  Author、validate 並 materialize Nexpulse Skill 的 canonical Rules 與 scoped RuleFile resources。Use when 使用者要求建立、修改、修正或同步 Skill Rules。SKIP when 主要需求是撰寫 Purpose、SOP 或其他非 Rules Skill 部位。
---

<!-- nexpulse:logical-body=linked entity="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-author-skill-rules/" body="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-author-skill-rules/BODY.md" -->

讀取並完整遵循 `vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-author-skill-rules/BODY.md`。該檔是 authoritative logical Body；
不得將本 Host projection 視為第二份 semantics source。

以上路徑以 consumer workspace root 為基準；canonical source root 為 `vendor/nexpulse-harness`。
Body 與支援文件的相對引用以各該 canonical 文件所在目錄解析。
文件中以 repository/project root 示意的 `nexpulse/...` script 路徑以 source root 解析；
script 的 inputs／outputs 依其明示 path contract 傳入，不因切換 cwd 改變 owner。
重新生成本 workspace 的 projections 時，明示 source root 與 consumer target root。
