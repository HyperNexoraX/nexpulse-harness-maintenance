---
name: nexpulse-decision-records
description: >-
  將 discovery session 的決策彙整成 session 外的 ADR 並維護其狀態，處理決策被取代，並在結案後將 session 移出 tree。Use when discovery session 的 specification 已由 Human 確認而要彙整 ADR、authoring 完成後要補正 ADR 與清單檔、既有 ADR 的決策被新決策取代、已結案的 session 要移出 tree，或要查找已移出 tree 的決策原文。SKIP when 主要需求是進行 discovery、author Skill 的各部位、檢查產出與決策是否矛盾，或修改沒有對應的 discovery session。
---

<!-- nexpulse:logical-body=linked entity="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-decision-records/" body="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-decision-records/BODY.md" -->

讀取並完整遵循 `vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-decision-records/BODY.md`。該檔是 authoritative logical Body；
不得將本 Host projection 視為第二份 semantics source。

以上路徑以 consumer workspace root 為基準；canonical source root 為 `vendor/nexpulse-harness`。
Body 與支援文件的相對引用以各該 canonical 文件所在目錄解析。
文件中以 repository/project root 示意的 `nexpulse/...` script 路徑以 source root 解析；
script 的 inputs／outputs 依其明示 path contract 傳入，不因切換 cwd 改變 owner。
重新生成本 workspace 的 projections 時，明示 source root 與 consumer target root。
