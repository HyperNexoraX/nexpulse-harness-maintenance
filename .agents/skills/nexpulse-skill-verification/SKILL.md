---
name: nexpulse-skill-verification
description: >-
  產出 Nexpulse Skill 修改的驗證報告並進行獨立檢查，比對產出與 specification、ADR 及 author 規則是否矛盾。Use when authoring 完成而要逐項記錄 AC 結果並交辦獨立檢查、沒有 specification 的修改改到行為而要在交付前檢查，或收到獨立檢查的交辦而要執行檢查。SKIP when 主要需求是進行 discovery、author Skill 的各部位、彙整或取代 ADR，或執行 behavioral evaluation。
---

<!-- nexpulse:logical-body=linked entity="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-skill-verification/" body="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-skill-verification/BODY.md" -->

讀取並完整遵循 `vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-skill-verification/BODY.md`。該檔是 authoritative logical Body；
不得將本 Host projection 視為第二份 semantics source。

以上路徑以 consumer workspace root 為基準；canonical source root 為 `vendor/nexpulse-harness`。
Body 與支援文件的相對引用以各該 canonical 文件所在目錄解析。
文件中以 repository/project root 示意的 `nexpulse/...` script 路徑以 source root 解析；
script 的 inputs／outputs 依其明示 path contract 傳入，不因切換 cwd 改變 owner。
重新生成本 workspace 的 projections 時，明示 source root 與 consumer target root。
