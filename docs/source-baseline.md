# ThreatFrame AI v1.0.0 Baseline

## Release baseline

Version 1.0.0 establishes the initial public-facing workflow, module boundaries, evidence discipline, and output contract for ThreatFrame AI.

## Modularization

The complete workflow is provided as `threatframe-workflow`, an end-to-end orchestrator for the focused Skills.

Focused workflows were extracted without changing the primary methodology:

- `threatframe-dfd` owns system context, DFD elements, flows, boundaries, and rendering semantics.
- `threatframe-threat-analysis` owns attack surface, STRIDE, scenarios, attack paths, impact, and optional knowledge enrichment.
- `threatframe-risk-treatment` owns managed risks, controls, mitigations, requirements, verification, residual risk, and acceptance/exception handling.
- `threatframe-report-generation` owns Confluence-ready HTML and other finished artifact rendering.

## Preserved invariants

- DFD + STRIDE + Attack Path remains the primary methodology.
- Attack Tree remains outside the core workflow.
- Stable IDs and engineering traceability remain mandatory.
- Assumptions, unknowns, test status, acceptance, and approvals cannot be fabricated.
- Confluence-ready HTML and Microsoft Threat Modeling Tool-like inline SVG remain the preferred full-report presentation.
