---
name: nexpulse-extract-shared-rules
description: >-
  從多個 Nexpulse Skills 提取共用 Rules，協調模組 ownership、consumer 引用遷移與語意保留。Use when 使用者要求跨 Skill 去重、抽離共用規則或調整既有共用規則的 ownership，且已有可比較的 Skill 內容。SKIP when 只需撰寫單一 Skill 的 Rules、直接編修已確認的共用 RuleFile，或抽離 SOP 或 Script 實作。
---

<!-- nexpulse:logical-body=linked entity="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-extract-shared-rules/" body="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-extract-shared-rules/BODY.md" -->

讀取並完整遵循 `vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-extract-shared-rules/BODY.md`。該檔是 authoritative logical Body；
不得將本 Host projection 視為第二份 semantics source。

以上路徑以 consumer workspace root 為基準；canonical source root 為 `vendor/nexpulse-harness`。
Body 與支援文件的相對引用以各該 canonical 文件所在目錄解析。
文件中以 repository/project root 示意的 `nexpulse/...` script 路徑以 source root 解析；
script 的 inputs／outputs 依其明示 path contract 傳入，不因切換 cwd 改變 owner。
重新生成本 workspace 的 projections 時，明示 source root 與 consumer target root。
