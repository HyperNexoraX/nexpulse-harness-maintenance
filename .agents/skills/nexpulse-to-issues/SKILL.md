---
name: nexpulse-to-issues
description: >-
  把工作中發現的 issue 起草成目標 repository 所在平台的 issue，經 Human 核准後建立、併入既有 issue 或關閉。Use when 工作中發現 Skill 的產出不符預期或規則沒被照做、程式出錯或表現不對，或想到本次範圍以外的改善，要先記下來不當場修；或使用者要求記 issue、補證據、關閉 issue，或要建立修正某筆 issue 的 PR。SKIP when 主要需求是當場修正、對 issue 做 RCA 或整合評估，或發現的事屬於本次工作要處理的範圍。
---

<!-- nexpulse:logical-body=linked entity="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-to-issues/" body="vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-to-issues/BODY.md" -->

讀取並完整遵循 `vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-to-issues/BODY.md`。該檔是 authoritative logical Body；
不得將本 Host projection 視為第二份 semantics source。

以上路徑以 consumer workspace root 為基準；canonical source root 為 `vendor/nexpulse-harness`。
Body 與支援文件的相對引用以各該 canonical 文件所在目錄解析。
文件中以 repository/project root 示意的 `nexpulse/...` script 路徑以 source root 解析；
script 的 inputs／outputs 依其明示 path contract 傳入，不因切換 cwd 改變 owner。
重新生成本 workspace 的 projections 時，明示 source root 與 consumer target root。
