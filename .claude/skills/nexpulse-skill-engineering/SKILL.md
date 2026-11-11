---
name: nexpulse-skill-engineering
description: >-
  協調 author-skill series 完成 Nexpulse Skill 的整體建立、重構與 polish，分析及整合所需的 Script／TemplateFile，並在 specification 確認後串接 ADR 彙整、authoring、補正與驗證。Use when 使用者要建立全新 Skill、整體重構或 polish 既有 Skill、希望一次協調 Frontmatter、Purpose、SOP 與 Rules 的 authoring，或要依 discovery session 已確認的 specification 開發 Skill。SKIP when 沒有 specification 而只需修改單一 Skill 部位、執行既有 Skill 的任務，或主要需求是 behavioral evaluation、promotion 或安裝。
---

<!-- nexpulse:logical-body=linked entity="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-skill-engineering/" body="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-skill-engineering/BODY.md" -->

讀取並完整遵循 `vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-skill-engineering/BODY.md`。該檔是 authoritative logical Body；
不得將本 Host projection 視為第二份 semantics source。

以上路徑以 consumer workspace root 為基準；canonical source root 為 `vendor/nexpulse-harness`。
Body 與支援文件的相對引用以各該 canonical 文件所在目錄解析。
文件中以 repository/project root 示意的 `nexpulse/...` script 路徑以 source root 解析；
script 的 inputs／outputs 依其明示 path contract 傳入，不因切換 cwd 改變 owner。
重新生成本 workspace 的 projections 時，明示 source root 與 consumer target root。
