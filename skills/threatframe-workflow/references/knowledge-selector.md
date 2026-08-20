# Knowledge Selector

Select threat/weakness knowledge after the core threat model.

| Product / Scenario | Typical Product Profiles | Candidate Knowledge Sources |
|---|---|---|
| Industrial Ethernet Switch | Network Device + Embedded/IoT + Industrial/OT | ATT&CK Enterprise/Network Devices + ATT&CK for ICS + CAPEC + CWE when applicable |
| Enterprise Router | Network Device + Embedded/IoT | ATT&CK Enterprise/Network Devices + CAPEC + CWE when applicable |
| Wireless AP / Controller | Network Device + Embedded and/or Web/API | ATT&CK Enterprise where supported + CAPEC + CWE |
| NMS | Web/API + possibly Cloud-Connected | ATT&CK Enterprise + CAPEC + CWE |
| Embedded / IoT Device | Embedded/IoT | CAPEC + CWE; ATT&CK when behavior mapping adds value |
| Web Application / API | Web/API | CAPEC + CWE + ATT&CK Enterprise when useful |
| OT Management System | Industrial/OT + Web/API | ATT&CK for ICS + ATT&CK Enterprise + CAPEC + CWE |

Rules:
- This is guidance, not forced mapping.
- Use the product architecture and actual attack scenario.
- One product can use multiple knowledge bases.
- Do not select ATT&CK for ICS merely because the product is sold into industrial markets.
- Use current authoritative sources for exact IDs/names where possible.
