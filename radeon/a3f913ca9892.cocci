//# pattern-1, witnesses: 19
@@
expression E0;
identifier PV1;
@@
- drm_helper_mode_fill_fb_struct(E0, PV1)
+ drm_helper_mode_fill_fb_struct(dev, E0, PV1)
//# pattern-2, witnesses: 2
@@
expression V0;
@@
- drm_helper_mode_fill_fb_struct(&V0->base.base, mode_cmd)
+ drm_helper_mode_fill_fb_struct(dev, &V0->base.base, mode_cmd)
