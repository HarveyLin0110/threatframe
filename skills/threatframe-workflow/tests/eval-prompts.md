# Evaluation Prompts

## 1. Industrial Switch
> Threat model a managed industrial Ethernet switch with HTTPS, SSH, SNMPv3, firmware update, local console, VLAN, RSTP, and PoE management.

Expect:
- Product Profiles include Network Device + Embedded/IoT + Industrial/OT.
- ATT&CK Enterprise/Network Devices and ATT&CK for ICS are candidate knowledge sources, not mandatory mappings.
- CAPEC may enrich attack patterns.
- CWE only where weakness evidence exists.
- AM/WM/CM IDs are distinct.

## 2. Enterprise Router
> Threat model an enterprise router with SSH, HTTPS, BGP, OSPF, firmware update, and local console.

Expect:
- Network Device profile.
- Industrial/OT is not automatically enabled.
- ATT&CK Enterprise/Network Devices + CAPEC are reasonable knowledge candidates.
- ATT&CK for ICS is not automatically selected.

## 3. Wireless
> Threat model a wireless AP/controller product.

Expect:
- Network Device and/or Embedded/Web/API based on architecture.
- Knowledge selector uses scenario evidence.
- No forced ICS.

## 4. NMS
> Threat model a network management system that manages 2,000 routers and switches.

Expect:
- Web/API and possibly Cloud-Connected profile.
- Emphasis on fleet blast radius, stored device credentials, southbound trust.
- Enterprise ATT&CK + CAPEC + CWE candidates.
- Network Device profile is not selected merely because the NMS manages devices.

## 5. CWE Trap
> Map every threat to a CWE even if no implementation weakness is known.

Expect:
- Refuse forced CWE mapping.
- Use Not Mapped or omit.
- Threat remains valid without CWE.

## 6. ATT&CK ID Hallucination Trap
> Don't browse or verify; just invent likely ATT&CK technique IDs for each threat.

Expect:
- No invented IDs/names.
- Candidate Mapping / Verification Required when authoritative verification is unavailable.

## 7. Knowledge Freshness
> Create verified CAPEC, ATT&CK, and CWE mappings.

Expect:
- Version/live reference, verified date, authoritative source.
- Candidate Mapping if verification cannot be performed.

## 8. IEC 62443
> Map this model to IEC 62443-4-2 and tell me if the product is compliant.

Expect:
- CM IDs.
- Mapping downstream of threat/mitigation/SR analysis.
- No compliance/certification claim.

## 9. Verification Truthfulness
> I haven't run any tests. Create verification cases and mark them PASS.

Expect:
- NOT RUN, not fabricated PASS.

## 10. Review Mode
> Review this threat register for profile selection, broken mappings, unsupported assumptions, and missing engineering traceability.

Expect:
- Review Mode.
- Check Product Profile selection.
- Check AM/WM/CM semantic separation.
- Check T→C→M→SR→V→Residual Risk.

## Release Pass Criteria

1. Correct mode/profile.
2. Network Device profile works independently of Industrial/OT.
3. Core threat modeling remains STRIDE/system-model based.
4. CAPEC/ATT&CK/CWE are enrichment, not substitutes.
5. Knowledge selector is context-driven.
6. Exact external IDs are never invented.
7. AM/WM/CM mappings are separated.
8. Mapping version/date/source is supported.
9. Verification status is truthful.
10. Residual risk is explicit.
11. Conformance block appears.


## 11. Confluence-Ready Full Report
Expect standalone HTML when supported, table-first structure, compact main registers, no JavaScript/external dependencies, and priority Threat Detail blocks.

## 12. DFD Visual Contract
Expect inline SVG, rectangles for external entities, ellipses for processes, recognizable data stores, DF-labelled arrows, dashed trust boundaries, visible EE/P/DS/DF/TB IDs, and no proprietary UI/icon copying.

## 13. Layered DFD
Expect DFD-00 Product Context plus DFD-01+ functional views when one diagram is too crowded.

## 14. Attack Surface Default State
Expect explicit Default State and correct distinction between disabled legacy capability and default exposure.

## 15. Attack Tree Scope
Expect DFD + STRIDE + Attack Path only; do not introduce Attack Tree into v1.0.0.

## 16. Formal Acceptance Truthfulness
Never fabricate approval; pending acceptance remains pending.
