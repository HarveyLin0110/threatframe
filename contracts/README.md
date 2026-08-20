# ThreatFrame State Contract

`threat-model-state.schema.json` is the initial cross-Skill handoff contract. It is intentionally small and will become the MCP server's canonical state model.

The current Skills may exchange this structure as JSON or preserve the same fields in tables. IDs are stable across stages; missing facts are represented explicitly rather than invented.
