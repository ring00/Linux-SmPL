//# pattern-3, witnesses: 4
@r0@
identifier i, fn;
@@
struct drm_driver i = {
    .get_scanout_position = fn,
};
@@
expression E0;
expression V1;
identifier crtc;
identifier dev;
identifier etime;
identifier flags;
identifier hpos;
identifier r0.fn;
identifier stime;
identifier vpos;
@@
- int fn(struct drm_device * dev, int crtc, unsigned int flags, int * vpos, int * hpos, ktime_t * stime, ktime_t * etime)
+ int fn(struct drm_device * dev, int crtc, unsigned int flags, int * vpos, int * hpos, ktime_t * stime, ktime_t * etime, const struct drm_display_mode * mode)
 {
     <...
- E0 = V1->mode_info.crtcs[crtc]->base.hwmode.crtc_vdisplay
+ E0 = mode->crtc_vdisplay
     ...>
 }
//# pattern-4, witnesses: 4
@r1@
identifier i, fn;
@@
struct drm_driver i = {
    .get_scanout_position = fn,
};
@@
expression E0;
expression V1;
identifier crtc;
identifier dev;
identifier etime;
identifier flags;
identifier hpos;
identifier mode;
identifier r1.fn;
identifier stime;
identifier vpos;
@@
 int fn(struct drm_device * dev, int crtc, unsigned int flags, int * vpos, int * hpos, ktime_t * stime, ktime_t * etime, const struct drm_display_mode * mode)
 {
     <...
- E0 = V1->mode_info.crtcs[crtc]->base.hwmode.crtc_vtotal
+ E0 = mode->crtc_vtotal
     ...>
 }
//# pattern-5, witnesses: 2
@@
expression E0;
expression E1;
@@
- radeon_get_crtc_scanoutpos(rdev->ddev, E0, 0, &vpos, &hpos, NULL, NULL)
+ radeon_get_crtc_scanoutpos(rdev->ddev, E0, 0, &vpos, &hpos, NULL, NULL, &rdev->mode_info.crtcs[E1]->base.hwmode)
