---
name: nexpulse-skill-evaluation
description: >-
  以抽樣評估量測 Nexpulse Skill 的行為：在評估情境中多次執行受測者、由不同 Host 的 judge 依判準評分，比較修改前後的遵循率並標示退步；也維護評估情境與 judge 的校準。Use when specification 或 RCA 的決定留言挑出要做行為驗證的 AC 而要跑修改前後的比較、要建立或修改評估情境與參考解、要校準 judge 或改變受測與 judge 的配置，或 Human 要求驗證既有 ADR 的未驗證行為。SKIP when 主要需求是寫驗證報告或做獨立檢查、author Skill 的各部位、進行 discovery，或對 issue 做 RCA。
---

<!-- nexpulse:logical-body=linked entity="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-skill-evaluation/" body="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-skill-evaluation/BODY.md" -->

讀取並完整遵循 `vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-skill-evaluation/BODY.md`。該檔是 authoritative logical Body；
不得將本 Host projection 視為第二份 semantics source。

以上路徑以 consumer workspace root 為基準；canonical source root 為 `vendor/nexpulse-harness`。
Body 與支援文件的相對引用以各該 canonical 文件所在目錄解析。
文件中以 repository/project root 示意的 `nexpulse/...` script 路徑以 source root 解析；
script 的 inputs／outputs 依其明示 path contract 傳入，不因切換 cwd 改變 owner。
重新生成本 workspace 的 projections 時，明示 source root 與 consumer target root。
