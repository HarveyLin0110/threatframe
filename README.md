# ThreatFrame AI

ThreatFrame AI is a modular, skills-first product security threat modeling plugin.

## Current release

Version 1.0.0 provides five reusable workflow Skills, a shared state contract, report templates, examples, and routing tests. It does not include MCP servers or an interactive app UI.

## Skills

| Skill | User goal |
|---|---|
| `threatframe-workflow` | Run a complete end-to-end threat model |
| `threatframe-dfd` | Build or revise the security DFD |
| `threatframe-threat-analysis` | Identify STRIDE threats and attack paths |
| `threatframe-risk-treatment` | Score and treat risks; define requirements and verification |
| `threatframe-report-generation` | Generate a Confluence-ready report from existing analysis |

See [docs/invocation.md](docs/invocation.md) for invocation examples and [docs/architecture.md](docs/architecture.md) for the Plugin/App architecture.
