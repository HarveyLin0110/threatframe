# Example — Enterprise Router

## Skill Execution
Skill Execution: Product Threat Modeling v1.0.0

- Mode: Product Mode
- Product Profiles: Network Device + Embedded/IoT
- Industrial/OT: N/A unless deployment/process context justifies it
- Candidate Knowledge: ATT&CK Enterprise / Network Devices + CAPEC + CWE as applicable

Key assets:
- Administrative identity
- Running/startup configuration
- Routing state
- Firmware
- Management-plane availability
- Forwarding availability

Example attack path:
`Remote Management Exposure → Valid Account / Credential Compromise → Privileged Configuration Change → Route Manipulation → Traffic Interception or Outage`

Do not automatically use ATT&CK for ICS just because the device is a router.
