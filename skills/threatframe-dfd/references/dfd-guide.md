# DFD Guide

The DFD is a security model, not a decorative architecture diagram.

## Semantic Notation
- `EE-xxx` External Entity → rectangle
- `P-xxx` Process → circle/ellipse
- `DS-xxx` Data Store → open-ended / parallel-line store
- `DF-xxx` Data Flow → directed arrow
- `TB-xxx` Trust Boundary → dashed boundary

## Visual Semantics
For HTML reports, prefer inline SVG with common threat-modeling DFD semantics similar to Microsoft Threat Modeling Tool diagrams:
- neutral background and shapes
- directional arrows with DF IDs
- dashed red trust boundaries
- visible stable IDs
- minimal decoration
- no proprietary UI/icon copying

## Diagram Levels
- `DFD-00` Product Context
- `DFD-01+` functional DFDs such as Management, Firmware/Update, Console/USB, Data/Control Plane, PTP/gPTP, Cloud/Backend

Avoid one unreadable everything-diagram.

## Flow Labels
Prefer `DF-003 — HTTPS Admin Command / TCP 443`, not `Generic Data Flow`.

## HTML / SVG
Embed SVG directly. Use no JavaScript or external dependency. If SVG is unavailable, use Mermaid; ASCII is last fallback.
