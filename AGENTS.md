# Nexpulse maintenance workspace

以繁體中文協作；technical terms 與 identifiers 保留原文。

## Owner 與路徑

- 本 repo 擁有 workspace 安裝設定、source gitlink、generated Host projections、workspace 自用 Skills 與 Host 設定。
- `vendor/nexpulse-harness` 是獨立 source Git root；Nexpulse canonical、resources、scripts、tests 與修改／整合理由在 source feature branch 保存。
- 開始 source 工作時按需讀取 `vendor/nexpulse-harness/AGENTS.md` 與選定 Skill 的 authoritative Body。生成器使用選定 source revision 內的 locked script bundle。
- 不手改 managed projections 或 manifest；同步走 `scripts/kit.ps1` 的 status／preview／apply。套用前按 current preview-approval rule 核對 Human approval。
- Source 不恢復自用 Host projections；`i-have-adhd` 是本 workspace 自用內容，不屬 kit manifest，不改其 invocation semantics。

## 協作與驗證

- Feature branch 工作，不直接 commit main／develop。Git index mutations 循序；不 squash、不改寫已共享歷史、不刪除 worktree。
- 跨 source 貢獻使用選定 source 中的 skill-collaboration 流程與 versioned records。共同 upstream merge 需對具體 head／base 的 Human review。
- 正式 kit commit 一起 stage config、manifest、gitlink、managed changed paths 與必要 attributes，取得 `status --check-index --verify-available` 的 SYNCED。
- Actual Host discovery、model adherence、Git／CLI 結果分別報告；生成入口不代表 Host 已實測。
- Source 的 `reports/**` 與 `.inspiration/**` 不預讀、不作 current contract；只有使用者明確指定歷史範圍才讀取。
