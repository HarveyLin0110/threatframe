# ThreatFrame AI Architecture

## Layer model

```text
Plugin
├─ Skills: user-goal workflows and output contracts
├─ MCP server: future shared state, validation, persistence, and actions
└─ UI resources: future DFD, Threat, Risk, Evidence, and Report views
```

## Workflow graph

```text
Product evidence
      ↓
DFD Modeling
      ↓
Threat Analysis
      ↓
Risk Treatment
      ↓
Report Generation

Product Threat Modeling = end-to-end orchestrator over the same stages
```

## Boundary rules

- Split by recognizable user goal, not by report section.
- Each focused Skill has distinct input and success criteria.
- The orchestrator owns cross-stage state consistency and final conformance.
- The future MCP server will own canonical structured state and controlled actions.
- Future UI components will display or edit MCP-backed state; UI will not become the analytical source of truth.

## Planned evolution

1. Skills-only plugin and activation tests.
2. Canonical ThreatFrame state schema and deterministic validation.
3. MCP tools for ingest, state transitions, validation, persistence, and export.
4. Interactive UI resources for DFD, registers, risk matrix, evidence, and report preview.
