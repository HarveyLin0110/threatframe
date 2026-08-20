# Skill Routing Cases

| Request | Expected Skill |
|---|---|
| Create a complete product threat model from this PDS | `threatframe-workflow` |
| Draw a Microsoft Threat Modeling Tool-like SVG DFD | `threatframe-dfd` |
| Run STRIDE against this existing DFD | `threatframe-threat-analysis` |
| Score these threats and create security requirements | `threatframe-risk-treatment` |
| Convert this completed model into Confluence-ready HTML | `threatframe-report-generation` |
| Explain what STRIDE means | No workflow Skill required |

## Boundary checks

- DFD-only requests do not generate speculative threats.
- Threat-only requests do not silently invent a missing DFD.
- Risk treatment requires existing threat scenarios.
- Report generation preserves analysis and statuses.
- Full orchestration emits only the Product Threat Modeling outer fingerprint.
