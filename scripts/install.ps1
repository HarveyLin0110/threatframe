$ErrorActionPreference = "Stop"

$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path

Write-Host "Adding the ThreatFrame AI Marketplace from $repoRoot"
& codex plugin marketplace add $repoRoot
if ($LASTEXITCODE -ne 0) {
    throw "Unable to add the ThreatFrame AI Marketplace."
}

Write-Host "Installing ThreatFrame AI"
& codex plugin add "threatframe@threatframe"
if ($LASTEXITCODE -ne 0) {
    throw "Unable to install ThreatFrame AI."
}

Write-Host "ThreatFrame AI is installed. Open a new Codex task to use it."
