//# pattern-2, witnesses: 4
@@
expression V0;
expression V1;
identifier crtc;
identifier dev;
identifier flags;
identifier fn;
identifier max_error;
identifier vblank_time;
@@
 int fn(struct drm_device * dev, int crtc, int * max_error, struct timeval * vblank_time, unsigned int flags)
 {
     <...
- drm_calc_vbltimestamp_from_scanoutpos(dev, crtc, max_error, vblank_time, flags, V0, &V1->hwmode)
+ drm_calc_vbltimestamp_from_scanoutpos(dev, crtc, max_error, vblank_time, flags, &V1->hwmode)
     ...>
 }
