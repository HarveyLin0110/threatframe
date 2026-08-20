# Attack-Knowledge Mapping

Use `AM-xxx` for CAPEC and MITRE ATT&CK mappings.

## CAPEC

Purpose: enrich the threat model with common attack patterns—how an attacker may execute an attack.

Record:
- AM ID
- Related T/AP
- Knowledge Base = CAPEC
- Pattern ID/name
- Mapping Status
- Rationale
- Source version
- Verified date
- Source/evidence

Do not use CAPEC as a risk score.

## MITRE ATT&CK

Purpose: enrich attack paths with adversary tactics/techniques.

Record:
- AM ID
- Related T/AP
- Knowledge Base / domain
- Platform
- Technique ID/name
- Mapping Status
- Rationale
- Source version/live version
- Verified date
- Source/evidence

Use:
- `Verified Mapping`
- `Candidate Mapping`
- `Not Mapped`

Rules:
1. Map behavior, not technology alone.
2. Do not force a mapping per threat.
3. Do not invent technique IDs/names.
4. ATT&CK does not determine risk by itself.
5. For routers/switches/load balancers and similar products, consider ATT&CK Enterprise Network Devices where evidence supports it.
6. For industrial attack paths, consider ATT&CK for ICS where relevant.
