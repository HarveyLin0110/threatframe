---
name: threatframe-report-generation
description: Transform an existing product threat model or its structured registers into a finished Confluence-ready HTML, Markdown, or requested document artifact. Use when analysis already exists and the goal is presentation, export, or report regeneration. Do not invent missing analysis, controls, risks, verification results, or approvals.
metadata:
  version: "1.0.0"
  display_name: "Threat Model Report Generation"
---

# Report Generation

Render existing threat-model state into a readable, traceable deliverable without changing analytical truth.

For a substantive execution, begin with:

`Skill Execution: Threat Model Report Generation v1.0.0`

## Input Contract

Accept structured state, registers, or an existing report. Preserve all IDs, statuses, evidence labels, confidence, unknowns, and traceability. Missing analysis remains visibly incomplete.

## Workflow

1. Confirm target format, audience, product/version, and whether this is a living document or release snapshot.
2. Validate that threats, risks, requirements, and verification statuses are not silently altered.
3. Apply the table-first report contract.
4. Keep the Threat Register compact and expand only priority Threat Details.
5. Render security DFDs using inline SVG for HTML, Mermaid for Markdown/chat, and compact fallback only when necessary.
6. Include review, open evidence, acceptance, and exception sections only with truthful status.
7. Run a final traceability and completeness check.

Read [references/output-contract.md](references/output-contract.md) for the formal section order and [references/dfd-guide.md](references/dfd-guide.md) when rendering a DFD.

For Confluence-ready HTML, use [assets/confluence-report.html](assets/confluence-report.html) as the template: UTF-8 semantic HTML, no JavaScript, no external assets, inline SVG when practical, and useful even when Confluence strips styling.

## Output Contract

The report must preserve `Asset / Interface / TB → Threat → Attack Path → Risk → Mitigation → Security Requirement → Verification → Residual Risk`.

Report generation does not perform new risk decisions. Route analytical gaps back to `$threatframe-dfd`, `$threatframe-threat-analysis`, or `$threatframe-risk-treatment`.

End substantive work with:

`Workflow Conformance — Threat Model Report Generation v1.0.0`
