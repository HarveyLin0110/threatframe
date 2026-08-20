# Invocation Guide

## Complete analysis

Codex explicit invocation:

```text
$threatframe-workflow
Use the attached PDS to create a complete product threat model.
```

Installed Plugin invocation in ChatGPT or Codex:

```text
@ThreatFrame AI
Use the attached PDS to create a complete product threat model.
```

Natural-language auto-selection remains enabled:

```text
Create a complete threat model for this managed Ethernet switch.
```

## Stage-specific invocation

```text
$threatframe-dfd Build a security DFD from this architecture.
```

```text
$threatframe-threat-analysis Analyze this DFD with STRIDE and create a threat register.
```

```text
$threatframe-risk-treatment Turn T-001 through T-012 into managed risks, requirements, and verification cases.
```

```text
$threatframe-report-generation Convert this existing model into Confluence-ready HTML.
```

With the installed Plugin, use `@ThreatFrame AI` plus the same goal. Skill metadata should route the request to the focused workflow.

## Chained workflow before MCP state exists

Until the MCP server is implemented, pass the previous stage artifact or structured state into the next request. Preserve IDs across every stage.

```text
DFD artifact/state
  → Threat Register
  → Risk and Engineering Traceability
  → Final Report
```

## Future App invocation

The App will expose the same goals through conversation and UI actions:

```text
@ThreatFrame AI Build the DFD
  → [Analyze Threats]
  → [Prioritize Risks]
  → [Generate Requirements]
  → [Export Report]
```

UI actions will call MCP tools against one canonical project state. Skills will continue to define decision rules and completion criteria.
