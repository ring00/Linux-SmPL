//# pattern-3, witnesses: 4
@@
expression E0;
@@
- E0->mode_changed
+ E0->connectors_changed
//# pattern-2, witnesses: 2
@@
statement S0;
@@
- if (!crtc_state->mode_changed) { S0 }
+ if (!crtc_state->mode_changed && !crtc_state->connectors_changed) { S0 }
