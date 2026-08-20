---
name: threatframe-workflow
description: Run an end-to-end product security threat model across system context, DFD, attack surface, STRIDE threats, attack paths, risk treatment, security requirements, verification, residual risk, and reporting. Use when the user requests a complete threat model, change-impact threat model, or review of an existing full model. Use focused sibling skills for a single DFD, threat, risk-treatment, or report stage.
metadata:
  version: "1.0.0"
  display_name: "Product Threat Modeling"
---

# Product Threat Modeling

Orchestrate the complete ThreatFrame AI workflow while preserving the evidence discipline and output contract established in v1.0.0.

## Mandatory Execution Fingerprint

For every substantive full execution, the first visible line MUST be exactly:

`Skill Execution: Product Threat Modeling v1.0.0`

It must appear before headings, explanations, links, artifacts, or results. If it is absent, do not claim that Product Threat Modeling v1.0.0 was executed. Do not abbreviate or reword it.

The final substantive section MUST contain exactly:

`Workflow Conformance — Product Threat Modeling v1.0.0`

Do not claim that this workflow was followed unless both fingerprints and the applicable quality checks were satisfied.

## Workflow

Use one primary methodology:

`System Context → DFD → Attack Surface → STRIDE → Threat Scenario → Attack Path → Risk → Mitigation → Security Requirement → Verification → Residual Risk → Report`

Attack Tree is not part of this workflow. Use `AP-xxx` for multi-step attack reasoning.

1. Record scope, mode, product profiles, evidence, assumptions, unknowns, and exclusions.
2. Build or validate DFD elements and stable IDs: `EE`, `P`, `DS`, `DF`, and `TB`.
3. Identify assets, interfaces, default exposure, data flows, trust boundaries, and current controls.
4. Apply STRIDE systematically without forcing every category.
5. Expand material scenarios with preconditions, attack paths, multi-layer impact, and evidence confidence.
6. Separate threats (`T-xxx`) from formally managed risks (`R-xxx`).
7. Preserve `T → C → M → SR → V → Residual Risk` traceability.
8. Generate a table-first Confluence-ready report when a complete report is requested.

For stage-level details, use these sibling workflows when installed:

- `$threatframe-dfd` for DFD creation or revision.
- `$threatframe-threat-analysis` for attack-surface and STRIDE analysis.
- `$threatframe-risk-treatment` for scoring, treatment, requirements, verification, and residual risk.
- `$threatframe-report-generation` for transforming an existing model into a finished artifact.

The orchestrator remains responsible for cross-stage IDs, state consistency, and the final conformance result.

## Evidence and Safety Rules

Use `FACT`, `ASSUMPTION`, `UNKNOWN`, `INFERENCE`, and `RECOMMENDATION`.

- Never invent architecture, flows, product capabilities, controls, mapping IDs, test results, approvals, owners, or sign-offs.
- A supported feature is not automatically enabled or effective.
- Designed verification defaults to `NOT RUN`; never mark `PASS` without execution evidence.
- Proposed mitigation does not automatically lower residual risk.
- CAPEC, ATT&CK, CWE, and compliance frameworks enrich the model; never force them or claim certification.
- Preserve stable IDs across revisions.

## Stable IDs

Use `A`, `EE`, `P`, `DS`, `I`, `DF`, `TB`, `AP`, `T`, `R`, `C`, `M`, `SR`, `V`, `OQ`, `EX`, `AM`, `WM`, and `CM` prefixes with three-digit numeric suffixes.

## Modes

- Product Mode: full product or system.
- Feature Mode: one feature, protocol, interface, or flow.
- Delta Mode: security impact of a proposed change.
- Review Mode: audit an existing model and its traceability.

For a narrow stage request, do not run the full orchestrator. Route to the focused skill and do not fabricate missing upstream state.

## Supporting Resources

- Read [references/product-profiles.md](references/product-profiles.md) when selecting product profiles.
- Read [references/risk-scoring.md](references/risk-scoring.md) only when no organizational risk method is supplied.
- Read [references/knowledge-selector.md](references/knowledge-selector.md) only when knowledge enrichment is requested or useful.
- Read [references/output-contract.md](references/output-contract.md) for complete report generation.
- Read [references/quality-gate.md](references/quality-gate.md) before finalizing a substantive run.
- Use assets and examples only when the requested deliverable needs them.

## Conformance

End with the required conformance heading and mark applicable stages `PASS`, `INCOMPLETE`, or `N/A`. A missing input is `INCOMPLETE`, not an invitation to invent content.
