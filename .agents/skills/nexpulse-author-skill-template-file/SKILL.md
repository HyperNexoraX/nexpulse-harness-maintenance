---
name: nexpulse-author-skill-template-file
description: >-
  建立、修改並核對 Nexpulse Skill 的 Markdown TemplateFile，管理固定格式與填寫位置。Use when 使用者要求建立、修改或同步 Skill 使用的 Markdown 範本，或將既有 Rules 的格式描述抽成 TemplateFile。SKIP when 只需依既有範本產生單次成品，或主要需求是修改 Rules 語意、SOP 流程、程式模板引擎或 binary assets。
---

<!-- nexpulse:logical-body=linked entity="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-author-skill-template-file/" body="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-author-skill-template-file/BODY.md" -->

讀取並完整遵循 `vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-author-skill-template-file/BODY.md`。該檔是 authoritative logical Body；
不得將本 Host projection 視為第二份 semantics source。

以上路徑以 consumer workspace root 為基準；canonical source root 為 `vendor/nexpulse-harness`。
Body 與支援文件的相對引用以各該 canonical 文件所在目錄解析。
文件中以 repository/project root 示意的 `nexpulse/...` script 路徑以 source root 解析；
script 的 inputs／outputs 依其明示 path contract 傳入，不因切換 cwd 改變 owner。
重新生成本 workspace 的 projections 時，明示 source root 與 consumer target root。
