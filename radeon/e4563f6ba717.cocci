//# pattern-3, witnesses: 16
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- drm_fb_helper_init(E0, E1, E2, E3)
+ drm_fb_helper_init(E0, E1, E3)
//# pattern-2, witnesses: 14
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- drm_fbdev_cma_init(E0, E1, E2, E3)
+ drm_fbdev_cma_init(E0, E1, E3)
//# pattern-4, witnesses: 2
@@
expression IL0;
identifier dev;
identifier fn;
@@
 int fn(struct drm_device * dev)
 {
     <...
- unsigned int num_crtc = num_crtc;
- num_crtc = dev->mode_config.num_crtc;
- ret = drm_fb_helper_init(dev, helper, num_crtc, IL0);
+ ret = drm_fb_helper_init(dev, helper, IL0);
     ...>
 }
