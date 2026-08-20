# Risk Scoring

Use the user's organizational method if supplied. Otherwise:

`Risk = Likelihood × Impact`

Likelihood and Impact use 1–5.

| Likelihood | Meaning |
|---|---|
| 1 Rare | Exceptional access/conditions |
| 2 Unlikely | Significant prerequisites/barriers |
| 3 Possible | Realistic feasible path |
| 4 Likely | Common exposure/weak barriers |
| 5 Almost Certain | Trivial/common/recurrent path |

| Impact | Meaning |
|---|---|
| 1 Negligible | Minimal effect |
| 2 Minor | Limited/recoverable |
| 3 Moderate | Material degradation/local compromise |
| 4 Major | Serious compromise/outage |
| 5 Severe | Catastrophic security/safety/fleet/mission impact |

| Score | Level |
|---|---|
| 1–4 | Low |
| 5–9 | Moderate |
| 10–16 | High |
| 17–25 | Critical |

Always provide rationale and confidence.

For safety/mission-critical contexts, do not average away a severe dimension.

Residual risk is not automatically reduced by a proposed mitigation. NOT RUN verification reduces confidence in residual-risk claims.
