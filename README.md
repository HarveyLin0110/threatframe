# ThreatFrame AI

ThreatFrame AI is a modular product-security threat modeling plugin for Codex, developed by [Harvey Lin](https://github.com/HarveyLin0110).

## Current release

Version 1.0.0 provides five reusable workflow Skills, a shared state contract, report templates, examples, and routing tests. It does not include MCP servers or an interactive app UI.

## Install from GitHub

Requirements: Git and a Codex installation that supports Plugin Marketplace commands.

```powershell
git clone https://github.com/HarveyLin0110/threatframe.git
cd threatframe
codex plugin marketplace add .
codex plugin add threatframe@threatframe
```

Open a new Codex task after installation so the Plugin and its Skills are discovered.

Windows users can run the included installer from the cloned repository:

```powershell
.\scripts\install.ps1
```

macOS and Linux users can run:

```bash
bash ./scripts/install.sh
```

## Skills

| Skill | User goal |
|---|---|
| `threatframe-workflow` | Run a complete end-to-end threat model |
| `threatframe-dfd` | Build or revise the security DFD |
| `threatframe-threat-analysis` | Identify STRIDE threats and attack paths |
| `threatframe-risk-treatment` | Score and treat risks; define requirements and verification |
| `threatframe-report-generation` | Generate a Confluence-ready report from existing analysis |

See [the invocation guide](plugins/threatframe/docs/invocation.md) for examples and [the architecture guide](plugins/threatframe/docs/architecture.md) for the Plugin/App architecture.

## Repository layout

```text
.agents/plugins/marketplace.json  Repository Marketplace manifest
plugins/threatframe/              ThreatFrame AI Plugin package
scripts/                          Installation helpers
```

## Developer

ThreatFrame AI is developed and maintained by [Harvey Lin](https://github.com/HarveyLin0110).

## License

ThreatFrame AI is licensed under the [MIT License](LICENSE).
