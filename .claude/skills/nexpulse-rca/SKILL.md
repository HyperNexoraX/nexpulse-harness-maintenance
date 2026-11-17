---
name: nexpulse-rca
description: >-
  從 issue 分析 Agent 或 Skill 的行為、程式表現或改善的根因與現況成因，經 Human 核准把結論留言寫回 issue，並負責整合評估及修 Skill 時的修正與驗證。Use when 使用者要求對一筆或幾筆 issue 做 RCA 或根因分析、指出已執行的產出不符預期而要求 RCA，或要挑選 issue 做整合評估。SKIP when 只需記 issue、補證據或關閉 issue，只需修正單次產出、依既定方向編修 Skill，或主要需求是一般 behavioral evaluation。
disable-model-invocation: true
---

<!-- nexpulse:logical-body=linked entity="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-rca/" body="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-rca/BODY.md" -->

讀取並完整遵循 `vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-rca/BODY.md`。該檔是 authoritative logical Body；
不得將本 Host projection 視為第二份 semantics source。

以上路徑以 consumer workspace root 為基準；canonical source root 為 `vendor/nexpulse-harness`。
Body 與支援文件的相對引用以各該 canonical 文件所在目錄解析。
文件中以 repository/project root 示意的 `nexpulse/...` script 路徑以 source root 解析；
script 的 inputs／outputs 依其明示 path contract 傳入，不因切換 cwd 改變 owner。
重新生成本 workspace 的 projections 時，明示 source root 與 consumer target root。
