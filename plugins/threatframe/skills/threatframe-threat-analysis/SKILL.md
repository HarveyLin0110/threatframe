---
name: threatframe-threat-analysis
description: Identify and review product-security threats from an existing system context, DFD, interface list, or attack surface. Use for STRIDE, threat scenarios, preconditions, attack paths, impact decomposition, existing-control evidence, and optional CAPEC/ATT&CK/CWE enrichment. Do not score or treat risks unless requested separately.
metadata:
  version: "1.0.0"
  display_name: "Threat Analysis"
---

# Threat Analysis

Transform known architecture and exposure into evidence-aware threat scenarios.

For a substantive execution, begin with:

`Skill Execution: Threat Analysis v1.0.0`

## Input Contract

Prefer an existing DFD or ThreatFrame state. If no DFD exists, identify only the minimum architecture required for the requested analysis and mark it preliminary. Preserve incoming `A`, `I`, `EE`, `P`, `DS`, `DF`, and `TB` IDs.

## Workflow

1. Select product profiles based on actual architecture and deployment evidence.
2. Build or validate the Attack Surface Register, including Default State, exposure, privilege, boundary, assets, current controls, and gaps.
3. Apply STRIDE as a thinking aid, not a six-category quota.
4. Create material `T-xxx` scenarios using `Asset + Interface/Flow + Trust Boundary + Threat Action + Consequence`.
5. Record preconditions or required access, evidence basis, confidence, and existing controls.
6. Create `AP-xxx` only for meaningful multi-step compromise.
7. Decompose material impact into cyber, operational, physical/safety, business/regulatory, and recoverability when relevant.
8. Optionally enrich with CAPEC, ATT&CK, or CWE only when supported and useful.

Never invent exact external mapping IDs. Use Candidate Mapping when authoritative verification is unavailable. Threats remain valid without mappings.

## Supporting Resources

- Read [references/product-profiles.md](references/product-profiles.md) when selecting profiles.
- Read [references/stride-guide.md](references/stride-guide.md) before systematic STRIDE analysis.
- Read [references/knowledge-selector.md](references/knowledge-selector.md) only for optional enrichment.
- Read [references/attack-mapping.md](references/attack-mapping.md) for CAPEC or ATT&CK mapping.
- Read [references/weakness-mapping.md](references/weakness-mapping.md) only when a plausible weakness exists.
- Use [assets/threat-register.csv](assets/threat-register.csv) when a CSV register is requested.

## Output Contract

Return a compact Threat Register plus detail blocks for High/Critical, multi-step, operationally important, or uncertain-control threats. Preserve a handoff state suitable for `$threatframe-risk-treatment`.

Do not automatically create `R-xxx`; managed risk selection belongs to the threatframe-risk-treatment stage.

End substantive work with:

`Workflow Conformance — Threat Analysis v1.0.0`
