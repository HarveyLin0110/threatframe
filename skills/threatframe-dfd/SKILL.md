---
name: threatframe-dfd
description: Create, revise, or review a security-focused data flow diagram for a product, feature, or system. Use when the user specifically requests system context, external entities, processes, data stores, data flows, trust boundaries, or a Microsoft Threat Modeling Tool-like SVG DFD. Do not perform full STRIDE or risk treatment unless requested separately.
metadata:
  version: "1.0.0"
  display_name: "DFD Modeling"
---

# DFD Modeling

Build a security model, not a decorative architecture diagram.

For a substantive execution, begin with:

`Skill Execution: DFD Modeling v1.0.0`

## Input Contract

Accept product descriptions, architecture documents, existing diagrams, interface lists, or an existing ThreatFrame state. Record missing material as `UNKNOWN` and ask only when it blocks a meaningful boundary or flow.

## Workflow

1. Establish scope and diagram level.
2. Identify `EE-xxx` external entities.
3. Identify `P-xxx` security-relevant processes.
4. Identify `DS-xxx` security-relevant data stores.
5. Identify directed `DF-xxx` flows with protocol/data labels.
6. Identify `TB-xxx` trust boundaries and the flows crossing them.
7. Record assets and interfaces referenced by the DFD without expanding into full threat analysis.
8. Validate that every flow has a source, destination, direction, and evidence status.

Prefer layered diagrams: `DFD-00` for product context and `DFD-01+` for focused functional views.

## Visual Contract

- External Entity: rectangle.
- Process: circle or ellipse.
- Data Store: open-ended or parallel-line store.
- Data Flow: directed arrow showing `DF-xxx` and protocol/data.
- Trust Boundary: visible dashed boundary, preferably red in HTML/SVG.
- Show stable IDs and avoid proprietary UI assets.

Rendering priority: inline SVG for HTML, Mermaid for Markdown/chat, and compact ASCII only as fallback. Use no JavaScript or external assets for standalone HTML. Do not imply authentication, encryption, protocol, or trust without evidence.

Read [references/dfd-guide.md](references/dfd-guide.md) before producing a formal diagram.

## Output Contract

Return the diagram scope and evidence status, DFD visual, DFD Element Register, Data Flow and Trust Boundary Register, unresolved architecture questions, and handoff state suitable for `$threatframe-threat-analysis`.

End substantive work with:

`Workflow Conformance — DFD Modeling v1.0.0`
