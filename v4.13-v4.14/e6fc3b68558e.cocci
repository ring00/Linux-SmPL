//# pattern-3, witnesses: 11
@@
expression E0;
expression E1;
expression E2;
expression E4;
expression E5;
expression E6;
expression V3;
@@
- drm_universal_plane_init(E0, E1, E2, &V3, E4, E5, E6, NULL)
+ drm_universal_plane_init(E0, E1, E2, &V3, E4, E5, NULL, E6, NULL)
//# pattern-1, witnesses: 5
@@
expression E1;
expression E4;
expression E7;
expression EC5;
expression S6;
expression V0;
expression V2;
expression V3;
@@
- drm_universal_plane_init(&dev_priv->drm, &V0->base, E1, &V2, V3, E4, EC5, S6, E7)
+ drm_universal_plane_init(&dev_priv->drm, &V0->base, E1, &V2, V3, E4, NULL, EC5, S6, E7)
