# AGENTS.md

Guidance for AI assistants and contributors working on ThreatFrame AI.

## Project Context

- Treat this repository as the v1.0.0 baseline for the ThreatFrame AI plugin.
- Keep the technical namespace `threatframe` and the display name `ThreatFrame AI`.
- Preserve the five Skills: `threatframe-workflow`, `threatframe-dfd`,
  `threatframe-threat-analysis`, `threatframe-risk-treatment`, and
  `threatframe-report-generation`.
- Keep Skills modular and composable through the shared threat-model state contract.
- Do not add redundant `AI` directory prefixes.

## Threat Modeling Invariants

- Preserve `DFD + STRIDE + Attack Path` as the v1.0.0 methodology. Do not add
  Attack Trees to this version.
- Preserve the exact full-workflow execution fingerprint:
  `Skill Execution: Product Threat Modeling v1.0.0`.
- Preserve the exact closing conformance marker:
  `Workflow Conformance — Product Threat Modeling v1.0.0`.
- Keep evidence statuses explicit: `FACT`, `ASSUMPTION`, `UNKNOWN`,
  `INFERENCE`, and `RECOMMENDATION`.
- Never fabricate controls, evidence, verification results, approvals, or risk
  acceptance. Verification defaults to `NOT RUN` unless evidence proves otherwise.
- Preserve end-to-end traceability from threat through control, mitigation,
  security requirement, verification, and residual risk.
- Keep Confluence-ready HTML browser-readable, table-first, semantic, free of
  JavaScript and external assets, and use Microsoft Threat Modeling Tool-like
  inline SVG DFD semantics without copying proprietary artwork.

## Change Workflow

1. Keep each change focused on one purpose.
2. Review affected Skills, shared contracts, documentation, templates, examples,
   and routing tests for consistency.
3. Keep all plugin, schema, Skill, fingerprint, and documentation versions aligned.
4. Run the smallest complete validation set applicable to the change.
5. Report checks that passed, failed, or were not run.
6. Review staged content for secrets, credentials, private data, internal URLs,
   customer information, and unpublished vulnerability details.

## Commit Format

Use this format:

```text
<type>: <description>

Why:
- <reason>

What:
- <change>
```

The body is required for every commit. Do not create title-only commits.

Allowed types:

- `feat`: new behavior or capability
- `fix`: defect correction
- `docs`: documentation-only change
- `refactor`: structure change without behavior change
- `test`: test or evaluation change
- `chore`: tooling, configuration, dependency, or maintenance change
- `security`: security hardening or security-control change
- `release`: version, package, tag, or release preparation

Before committing:

1. Review staged and unstaged changes.
2. Run applicable Skill and plugin validators.
3. Run `git diff --cached --check`.
4. Use `.gitmessage` as the message template.
5. Verify the result with `git log -1 --format=full`.

Do not amend, squash, rebase, merge, tag, push, publish, or rewrite history
without explicit owner approval.
