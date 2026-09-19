# M5 maintenance 驗證與 review checkpoint

本 repo 是正式 maintenance workspace；source canonical、runtime 與完整 Git 歷史由直接 submodule `vendor/nexpulse-harness` 提供。Human 已將本輪範圍收斂為 maintenance 可正常運作；Framework 後續延後。

## Source 整合

- [Source PR #2](https://github.com/HyperNexoraX/nexpulse-harness/pull/2) 已以 merge commit 合併至 `develop`。
- 已核准 head：`9471d0d641bc8f02d55b923cda6da6537f64ff2d`。
- 已核准 base：`862c21a655040de0e07baf5d94d958e3438229e0`。
- 實際 merge／採用目標：`d4dd4a423bf08a194fe785e390f9cc60494ba5ed`。
- Merge parents 與核准值一致，`f067e56906059cb77451954c9b730b9493922f75` 的原始 ancestry 保留；未 squash、rebase 或重建 source repo。
- Source 退出 30 個 kit projections、3 個 `i-have-adhd` 檔及 `.codex/config.toml`；current canonical `nexpulse/ongoing/**` 不因本次遷移而改寫。

## Owner 與交付內容

| Owner | 內容 |
| --- | --- |
| Source | Canonical Skills、Rules、resources、scripts、tests、source 修改與整合理由 |
| Maintenance | `.gitmodules`、source gitlink、`.nexpulse/kit.json`／manifest、LF attributes、30 個 generated Host files、workspace 啟動說明與薄 CLI 入口 |
| Maintenance 自用內容 | `i-have-adhd` 三檔及 `.codex/config.toml`；承接原 `f067e56` Git blobs，不納入 kit manifest |
| Local-only | `.claude/settings.local.json`、uv binary／caches，均 ignored；local override 不發布 |

Maintenance 是 public；source 仍 private。Clone／availability 檢查使用既有 source Git 存取權，不推論匿名 clone 可取得 source。

## 已有真實 Host 證據

Source merge 中的 [M5 report](../vendor/nexpulse-harness/develop/skill-kit-lifecycle/M5-VERIFICATION.md) 保存遷移前的原始 inventory、initial apply、15 項 preservation checks、實際 Host events 與失敗紀錄。

- Codex 0.153.4：maintenance 的 10 個 kit Skills discovery／companion metadata 通過。
- 真實 Codex 模型：從外層 Frontmatter／Engineering 入口追讀 source Body、Rules 與 collaboration resources；辨識 source／consumer owner，透過正常 Host approval reviewer 成功執行 source locked status。
- 上述模型 trial 使用 `b6249fd`，當時 index 尚未完成。`d4dd4a4` 的 canonical 與 30 個 outputs 相同；正式 pin／index 結果由下方獨立記錄，不改写舊 trial 的 revision。
- Claude Code 2.1.210：OAuth session 過期且 refresh 失敗，模型 0 tokens；Human 指定本次記為帳號阻擋。

## 正式 adoption 與恢復

2026-09-19，Human 以「Apply」核准已呈現的 final preview；source-owned CLI 實際回報 APPLIED，只更新 config／manifest 的 revision，30 個 outputs 不變。完整 staged gate 已取得 SYNCED：index-current 為 true、differences 與 pending-index 均為空，source fresh-clone availability 為 VERIFIED。13 項 adoption preservation checks 全部通過。

原始證據：[index／availability](evidence/m5/maintenance-final-index-status.json)、[preservation](evidence/m5/maintenance-adoption-preservation.json)、[source merge](evidence/m5/source-merge.json)。

**Known-good adoption commit：`7026a9e6e4aa914c924e6afe333e4d8bc6b41717`**，已推送至 `codex/skill-kit-m5`，由 [maintenance PR #1](https://github.com/HyperNexoraX/nexpulse-harness-maintenance/pull/1) review。後續文件／evidence commit 保留這個 commit，不改安裝內容。

真實遠端 fresh clone：`E:/HyperNexoraX/nexpulse-harness/build/m5-maintenance-fresh-20260919`。Clone 使用 `--recurse-submodules` 與 `core.autocrlf=true`，source pin 為 `d4dd4a423bf08a194fe785e390f9cc60494ba5ed`，沒有本機專用 runtime binary；以 PATH 的 uv 0.11.4、空 cache 執行 README 的 `scripts/kit.ps1 status --check-index --verify-available`，結果 SYNCED、index-current true、availability VERIFIED、零 differences／pending-index，Git 工作區保持乾淨。

Fresh clone 的 **16 項 checks 全部 PASS**，其中包含與正式 workspace 比較的 30 個 managed outputs／4 個非 kit files 的 exact-byte recovery。新 clone 的 Codex `codex-cli 0.153.4` discovery 也取得 10／10 kit entries、enabled／repo scope／companion metadata PASS。

原始證據：[fresh clone／wrapper](evidence/m5/maintenance-fresh-clone.json)、[16 項 recovery checks](evidence/m5/maintenance-fresh-preservation.json)、[fresh Codex discovery](evidence/m5/maintenance-fresh-discovery.json)。本輪只做 source projection／外層 adoption，未改 canonical 或 runtime，沒有無差別重跑舊 fixture suites。

Default branch merge 仍待本 repo 的具體 head／base review；目前可從 feature branch 取得完整內容，GitHub `develop` 在 merge 前仍是 bootstrap。

## AC09：maintenance 範圍 PASS

必要 Skills 的真實載入、source active tree 退出自用 projections、來源 Git 歷史保存、外層 Git adoption 與 known-good recovery 均有實際證據。Claude 模型帳號阻擋與 Framework 延後依 Human 指定明示，不延伸為全 Host／原始完整 M5 驗收通過。

### 工作位置與待處理工作

正式日常入口為 `E:/HyperNexoraX/nexpulse-harness-maintenance`。原 `E:/HyperNexoraX/nexpulse-harness` 的 `codex/skill-kit-m4`／`f067e56` 與 M3 worktree 保留，不刪除或 reset。

Source M5 工程在 `E:/HyperNexoraX/nexpulse-harness/build/m5-source` 保存；source merged pin 與 maintenance adoption 分別由各自 Git 擁有。原 worktrees 的待處理工作不搬成第二份 canonical；後續 source 修改在維護外層的直接 source Git root 開 feature branch。

Framework worktree 與 source PR #3 保留原狀、未整合，本報告不宣告 Framework 完成。D001–D008 沿用；specification 的整體 review 狀態不由本次工程 checkpoint 自動變更。

## 限制

Host discovery、有限模型情境與 Git／CLI 檢查分層判讀；沒有宣告所有 Skills 或所有 Hosts 的完整行為驗證。Kit 沒有 process-crash transaction 或 concurrent writer lock。Fresh clone 不帶 local overrides／runtime cache，須按 README 準備 uv 0.11.4+ 與 source credentials。
