---
name: nexpulse-skill-rca
description: >-
  回溯 Skill 執行證據與 context，分析根因，與 Human 收斂後協調修正及驗證。Use when 使用者指出已執行 Skill 的產出不符預期或流程反覆受阻，並要求 RCA 或根因分析。SKIP when 只需修正單次產出、依既定方向編修 Skill，或主要需求是一般 behavioral evaluation。
disable-model-invocation: true
---

<!-- nexpulse:logical-body=linked entity="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-skill-rca/" body="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-skill-rca/BODY.md" -->

讀取並完整遵循 `vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-skill-rca/BODY.md`。該檔是 authoritative logical Body；
不得將本 Host projection 視為第二份 semantics source。

以上路徑以 consumer workspace root 為基準；canonical source root 為 `vendor/nexpulse-harness`。
Body 與支援文件的相對引用以各該 canonical 文件所在目錄解析。
文件中以 repository/project root 示意的 `nexpulse/...` script 路徑以 source root 解析；
script 的 inputs／outputs 依其明示 path contract 傳入，不因切換 cwd 改變 owner。
重新生成本 workspace 的 projections 時，明示 source root 與 consumer target root。
