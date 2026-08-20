# Product Profiles

Profiles describe what kind of product/system is under analysis. They are not threat taxonomies or compliance frameworks.

## General Product Security

Identity, authentication, authorization, integrity, confidentiality, availability, update, secrets, logging, recovery, dependencies.

## Network Device

Use for routers, switches, wireless infrastructure, load balancers, security/network appliances, and similar products.

Consider:
- Management plane
- Control plane
- Data/forwarding plane
- Administrative identity
- Configuration
- Routing/switching state
- Network-facing services
- Remote/local management
- L2/L3 protocol exposure
- Resource exhaustion/control-plane DoS
- Firmware/update/recovery
- Console/maintenance
- Availability and recoverability

## Embedded / IoT

Boot, firmware authenticity, local debug, physical access, device identity, provisioning, reset state, secrets, storage, constrained resources, rollback, recovery, supply chain.

## Industrial / OT

Availability/determinism, operational/process impact, plausible safety paths, long lifecycle, patch constraints, remote maintenance, flat/legacy networks, Layer-2 exposure, industrial protocol trust, recovery time, field access.

Do not assume every industrial product is safety-critical.

## Web / API

Authentication/session/token handling, object authorization, tenant isolation, input validation, rate limiting, API abuse, backend trust, secrets, admin endpoints, auditability.

## Cloud-Connected Product

Enrollment, device identity, cloud API authorization, remote commands/updates, fleet blast radius, key rotation/revocation, tenant isolation, offline behavior, dependency outages, backend compromise.
