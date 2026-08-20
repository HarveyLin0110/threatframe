---
name: threatframe-risk-treatment
description: Convert an existing threat register into managed risks, treatment strategies, testable security requirements, verification cases, residual-risk assessments, acceptance records, and optional compliance mappings. Use when threats already exist and the user asks to prioritize, mitigate, verify, accept, or track them. Do not invent missing threat scenarios or test evidence.
metadata:
  version: "1.0.0"
  display_name: "Risk Treatment"
---

# Risk Treatment

Turn threat analysis into accountable engineering work.

For a substantive execution, begin with:

`Skill Execution: Risk Treatment v1.0.0`

## Input Contract

Require one or more `T-xxx` threats with evidence and impact context. Preserve existing IDs. If the threat basis is too weak to score or treat responsibly, mark the result `INCOMPLETE` and state the missing evidence.

## Workflow

1. Use the user's organizational risk method when supplied; otherwise read [references/risk-scoring.md](references/risk-scoring.md).
2. Score likelihood and impact with rationale and confidence.
3. Create `R-xxx` only when formal treatment, tracking, ownership, acceptance, or exception management is required.
4. Credit only evidence-backed `C-xxx` current controls and state coverage limits.
5. Define `M-xxx` as treatment strategy: prevent, detect, limit, recover, avoid, or transfer.
6. Translate accepted treatment into observable, implementation-neutral `SR-xxx` requirements.
7. Define `V-xxx` verification with setup, steps, expected result, pass criteria, fail criteria, evidence, and status.
8. Assess residual risk without assuming unimplemented or unverified controls are effective.
9. Record defense-in-depth gaps, open questions, acceptance, or `EX-xxx` exceptions when applicable.
10. Add compliance mappings only when requested and evidence-supported.

Allowed verification status: `NOT RUN`, `PASS`, `FAIL`, `BLOCKED`. Default to `NOT RUN`; never fabricate execution evidence or approvals.

## Traceability Contract

Preserve `T-xxx → R-xxx when managed → C-xxx → M-xxx → SR-xxx → V-xxx → Residual Risk`. Optional `CM-xxx` mappings branch from the applicable threat, mitigation, or requirement.

## Supporting Resources

- Read [references/verification-guide.md](references/verification-guide.md) for material verification cases.
- Read [references/compliance-mapping.md](references/compliance-mapping.md) only when framework mapping is requested.
- Read [references/quality-gate.md](references/quality-gate.md) before finalizing a substantive treatment package.
- Use the CSV assets when machine-readable registers are requested.

## Output Contract

Return a Risk Register and engineering traceability table. Include acceptance or exception records only when applicable, and never invent owner or approval fields.

End substantive work with:

`Workflow Conformance — Risk Treatment v1.0.0`
