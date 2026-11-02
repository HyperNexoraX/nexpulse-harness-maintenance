# Nexpulse Harness Maintenance

Nexpulse 日常維護的正式外層 workspace。Canonical Skills、resources、工具與來源歷史由直接 submodule `vendor/nexpulse-harness` 擁有；本 repo 一起版控 source gitlink、安裝設定與 Codex／Claude Code 的生成入口。

## 啟動

需要 Git、PowerShell 7+（或已允許執行本機 script 的 Windows PowerShell）、Python 3.11+、uv 0.11.4+，以及 private source repository 的 Git 存取權。Maintenance 為 public；source 存取權仍個別管理。

```powershell
git clone --recurse-submodules https://github.com/HyperNexoraX/nexpulse-harness-maintenance.git
Set-Location nexpulse-harness-maintenance
uv --version  # 0.11.4 or newer
./scripts/kit.ps1 status --check-index --verify-available
```

已有 clone 可先執行 `git submodule update --init vendor/nexpulse-harness`。正常結果為 `SYNCED`／`pinned`、`index-current: true`，且沒有 differences 或 pending-index。

在此 repo 根目錄開啟 Codex／Claude Code，由外層入口追讀 source 中的 authoritative Body。Host project trust 由使用者在各 Host 完成。Codex 的 discovery、Body 載入與實際 locked status 已驗證；Claude 的模型 trial 因 OAuth 過期而帳號阻擋，本次未宣告模型驗證通過。

## Runtime

`scripts/kit.ps1` 是薄入口：檢查 uv 版本，呼叫選定 source 中的 `uv run --locked --script .../kit.py`，所有生成與 Git contract 仍由 source 擁有。

- 正式本機 `E:/HyperNexoraX/nexpulse-harness-maintenance` 已在 ignored `build/runtime/bin` 準備 uv 0.11.4。
- 新 clone 使用 PATH 的 uv；須滿足 0.11.4+。Local runtime binary 與 caches 不在 Git 中。
- Cache 預設為 workspace 的 `build/uv-cache`；明示 `UV_CACHE_DIR` 時沿用該值。
- Windows Codex sandbox 的 OS account 可能與 Git repo owner 不同。需要時由 Host 的正常 approval reviewer 執行唯讀 status；保留 source Git-root validator 與現有 Git 安全設定。

## 顯式整套同步

保存既有工作，確認已授權的完整 source SHA，再取得該版本：

```powershell
git -C vendor/nexpulse-harness fetch origin
git -C vendor/nexpulse-harness checkout --detach FULL_SOURCE_SHA
./scripts/kit.ps1 preview --revision FULL_SOURCE_SHA
# Review current approval-view；Human approval 後，使用工具回傳的 plan。
./scripts/kit.ps1 apply --plan-id APPROVED_PLAN_ID
```

依 preview 的 changed paths，將 config、manifest、source gitlink、managed changed paths 與必要 attributes 一起 stage；再執行 `./scripts/kit.ps1 status --check-index --verify-available`。取得 SYNCED 後，從 feature branch 提交並走 PR。Apply 不會代為 fetch、checkout、stage 或 commit。

## Source 維護與現場試改

Source 修改在 `vendor/nexpulse-harness` 自己的 feature branch 保存；理由、驗證與 source PR 回 source Git，workspace 安裝修改回本 repo。開始前按需讀取 source `AGENTS.md` 與所用 Skill 的 Body／collaboration resources。

試用 feature branch 執行 `./scripts/kit.ps1 preview --trial`，依 current approval 再 apply。Trial 保留 adopted revision，不能通過正式 pinned index gate。共同 upstream 完成 Human review 與 merge 後，再明確採用實際 merge revision。

## 已知版本恢復

完整的 consumer commit 保存當時的 source gitlink、設定、manifest 與生成入口。[M5 驗證報告](docs/M5-VERIFICATION.md) 記錄實際 known-good commit、fresh clone 與恢復證據。

在新的獨立 checkout 恢復指定版本：

```powershell
git clone https://github.com/HyperNexoraX/nexpulse-harness-maintenance.git maintenance-recovery
Set-Location maintenance-recovery
git checkout --detach KNOWN_GOOD_MAINTENANCE_COMMIT
git submodule update --init vendor/nexpulse-harness
./scripts/kit.ps1 status --check-index --verify-available
```

保留工作中的 source branch 與原有 worktrees。其他 consumer 不會因本 workspace 同步而自動改版。`.claude/settings.local.json` 是 local-only override，本機已承接原檔；新 clone 不含此檔，按個人 Host 需求設定。

## M5 定位

- Source migration：[nexpulse-harness PR #2](https://github.com/HyperNexoraX/nexpulse-harness/pull/2)，實際 merge pin `d4dd4a423bf08a194fe785e390f9cc60494ba5ed`。
- Kit：10 Skills，Codex 20 files＋Claude Code 10 files；generated outputs 不另擁有 canonical 語意。
- `i-have-adhd` 三個檔與 `.codex/config.toml` 由 maintenance owner 承接原 `f067e56` Git blobs，不屬 kit manifest。
- 日常工作位置為本 repo 根目錄；舊 `E:/HyperNexoraX/nexpulse-harness` 與 M3 worktree 保留歷史及未完成工作。
- 依 Human 最新範圍，Framework 後續由使用者處理；本輪驗收只涵蓋 maintenance 與 source 遷移。
