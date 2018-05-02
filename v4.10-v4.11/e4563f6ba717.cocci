//# pattern-3, witnesses: 7
@@
expression E0;
expression E1;
expression E2;
expression IL3;
@@
- drm_fb_helper_init(E0, E1, E2, IL3)
+ drm_fb_helper_init(E0, E1, IL3)
//# pattern-2, witnesses: 5
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- drm_fbdev_cma_init(E0, E1, E2, E3)
+ drm_fbdev_cma_init(E0, E1, E3)
