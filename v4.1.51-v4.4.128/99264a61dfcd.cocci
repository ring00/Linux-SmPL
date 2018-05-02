//# pattern-1, witnesses: 3
@@
@@
- smp_mb__after_atomic;
//# pattern-2, witnesses: 3
@@
@@
- smp_mb__before_atomic;
//# pattern-3, witnesses: 2
@@
expression BO0;
expression E1;
expression E2;
identifier crtc;
identifier dev;
identifier fn;
@@
 void fn(struct drm_device * dev, int crtc)
 {
     <...
- vblcount = atomic_read(&vblank->count);
- if (BO0) {
- vblanktimestamp(dev, crtc, vblcount + 1) = tvblank;
- atomic_inc(&vblank->count);
- }
+ vblcount = vblank->count;
+ if (E1 BO0 E2) {
+ store_vblank(dev, crtc, 1, &tvblank);
+ }
     ...>
 }
