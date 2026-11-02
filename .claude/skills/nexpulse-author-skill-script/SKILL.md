---
name: nexpulse-author-skill-script
description: >-
  將 Nexpulse Skill SOP／Rules 中可明確規格化的機械工作實作為可重用、可驗證的 scripts，並協調呼叫整合。Use when 使用者要降低 Skill 執行的 context 成本、以程式承擔確定性操作，或建立及修改支援既有 Skill 流程的 script。SKIP when 只需執行既有 script、單純編修 prose，或主要需求是設計與實作獨立的 tool/runtime。
---

<!-- nexpulse:logical-body=linked entity="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-author-skill-script/" body="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-author-skill-script/BODY.md" -->

讀取並完整遵循 `vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-author-skill-script/BODY.md`。該檔是 authoritative logical Body；
不得將本 Host projection 視為第二份 semantics source。

以上路徑以 consumer workspace root 為基準；canonical source root 為 `vendor/nexpulse-harness`。
Body 與支援文件的相對引用以各該 canonical 文件所在目錄解析。
文件中以 repository/project root 示意的 `nexpulse/...` script 路徑以 source root 解析；
script 的 inputs／outputs 依其明示 path contract 傳入，不因切換 cwd 改變 owner。
重新生成本 workspace 的 projections 時，明示 source root 與 consumer target root。
