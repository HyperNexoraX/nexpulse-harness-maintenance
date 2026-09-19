# Thin workspace entry; all installation semantics belong to the pinned source.
$ErrorActionPreference = 'Stop'
$kitWorkspace = Split-Path -Parent $PSScriptRoot
$kitScript = Join-Path $kitWorkspace 'vendor/nexpulse-harness/nexpulse/ongoing/skills/nexpulse-author-skill-frontmatter/scripts/kit/kit.py'
if (-not (Test-Path -LiteralPath $kitScript -PathType Leaf)) {
    throw 'Initialize vendor/nexpulse-harness at the consumer gitlink before running kit commands.'
}
$kitUv = Join-Path $kitWorkspace 'build/runtime/bin/uv.exe'
if (-not (Test-Path -LiteralPath $kitUv -PathType Leaf)) {
    $kitUv = (Get-Command uv -ErrorAction Stop).Source
}
$kitUvVersion = & $kitUv --version
if ($LASTEXITCODE -ne 0 -or $kitUvVersion -notmatch '^uv (\d+\.\d+\.\d+)' -or [version]$Matches[1] -lt [version]'0.11.4') {
    throw 'The source kit requires uv 0.11.4 or newer. Update uv before running this workspace entry.'
}
$kitPreviousCache = $env:UV_CACHE_DIR
try {
    if ([string]::IsNullOrWhiteSpace($env:UV_CACHE_DIR)) {
        $env:UV_CACHE_DIR = Join-Path $kitWorkspace 'build/uv-cache'
    }
    & $kitUv run --locked --script $kitScript @args --target-root $kitWorkspace
    $kitExit = $LASTEXITCODE
}
finally {
    $env:UV_CACHE_DIR = $kitPreviousCache
}
exit $kitExit
