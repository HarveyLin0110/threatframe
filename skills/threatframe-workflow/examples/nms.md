# Example — Network Management System

## Skill Execution
Skill Execution: Product Threat Modeling v1.0.0

- Mode: Product Mode
- Product Profiles: Web/API + possibly Cloud-Connected Product
- Candidate Knowledge: ATT&CK Enterprise + CAPEC + CWE
- Network Device profile applies only to embedded/device-like NMS components, not merely because the system manages network devices

Assets may include:
- Administrative accounts/tokens
- Device credentials
- Network topology/configuration
- Southbound management keys
- Audit logs
- Fleet-wide configuration authority

Important blast-radius consideration:
Compromise of an NMS may create a control path into many managed devices even if each individual device has strong local security.
