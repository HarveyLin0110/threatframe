#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd "$script_dir/.." && pwd)"

echo "Adding the ThreatFrame AI Marketplace from $repo_root"
codex plugin marketplace add "$repo_root"

echo "Installing ThreatFrame AI"
codex plugin add threatframe@threatframe

echo "ThreatFrame AI is installed. Open a new Codex task to use it."
