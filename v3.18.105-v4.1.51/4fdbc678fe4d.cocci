//# pattern-3, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
expression E5;
expression E6;
expression E7;
expression E8;
@@
- sti_layer_prepare(layer, E0, &crtc->mode, mixer->id, E1, E2, E3, E4, E5, E6, E7, E8)
+ sti_layer_prepare(layer, crtc, E0, &crtc->mode, mixer->id, E1, E2, E3, E4, E5, E6, E7, E8)
