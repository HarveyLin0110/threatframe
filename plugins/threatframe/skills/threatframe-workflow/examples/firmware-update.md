# Example — Firmware Update

## Skill Execution
Skill Execution: Product Threat Modeling v1.0.0

- Mode: Feature Mode
- Product Profiles: General Product Security + Embedded/IoT when applicable
- Knowledge Sources: CAPEC/CWE if verified; ATT&CK only if adversary-behavior mapping adds value

T-001: Unauthorized firmware installation.

AP-001:
`Update Interface → Malicious/Modified Image → Inadequate Authenticity Validation → Installation → Persistent Compromise`

M-001: Prevent unauthorized firmware installation/activation.

SR-001: The device shall authenticate firmware before installation or activation using the defined trust mechanism.

V-001:
- Expected Result: invalid firmware is rejected and trusted firmware remains bootable
- Pass Criteria: no invalid image becomes active; recovery remains possible
- Fail Criteria: invalid firmware runs or update failure leaves the device unrecoverable
- Status: NOT RUN

CWE mapping is only appropriate if the underlying implementation/design weakness is known or plausibly evidenced.
