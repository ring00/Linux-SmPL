//# pattern-2, witnesses: 24
@@
expression E1;
expression S0;
@@
- DRM_DEBUG_KMS(S0, E1)
+ DRM_DEBUG_ATOMIC(S0, E1)
//# pattern-1, witnesses: 14
@@
expression E1;
expression ME2;
expression S0;
@@
- DRM_DEBUG_KMS(S0, E1, ME2)
+ DRM_DEBUG_ATOMIC(S0, E1, ME2)
//# pattern-3, witnesses: 6
@@
expression E1;
expression E2;
expression E3;
expression S0;
@@
- DRM_DEBUG_KMS(S0, E1, E2, E3)
+ DRM_DEBUG_ATOMIC(S0, E1, E2, E3)
//# pattern-5, witnesses: 5
@@
expression S0;
@@
- DRM_DEBUG_KMS(S0)
+ DRM_DEBUG_ATOMIC(S0)
//# pattern-4, witnesses: 2
@@
expression S0;
@@
- DRM_DEBUG_KMS(S0, connector->base.id, connector->name, new_encoder->base.id, new_encoder->name, connector_state->crtc->base.id)
+ DRM_DEBUG_ATOMIC(S0, connector->base.id, connector->name, new_encoder->base.id, new_encoder->name, connector_state->crtc->base.id)
