//# pattern-27, witnesses: 7
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
typedef bool;
identifier crtc;
identifier dev;
identifier r0.fn;
@@
- bool fn(struct drm_device * dev, int crtc)
+ bool fn(struct drm_device * dev, unsigned int pipe)
 {
     <...
- dev->vblank[crtc]
+ dev->vblank[pipe]
     ...>
 }
//# pattern-29, witnesses: 7
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
typedef bool;
identifier dev;
identifier pipe;
identifier r1.fn;
@@
 bool fn(struct drm_device * dev, unsigned int pipe)
 {
     <...
- crtc >= dev->num_crtcs
+ pipe >= dev->num_crtcs
     ...>
 }
//# pattern-33, witnesses: 2
@r2@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier crtc;
identifier dev;
identifier r2.fn;
@@
- void fn(struct drm_device * dev, int crtc)
+ void fn(struct drm_device * dev, unsigned int pipe)
 {
     <...
- drm_vblank_get(dev, crtc)
+ drm_vblank_get(dev, pipe)
     ...>
 }
//# pattern-55, witnesses: 2
@r3@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier crtc;
identifier dev;
identifier r3.fn;
@@
- int fn(struct drm_device * dev, int crtc)
+ int fn(struct drm_device * dev, unsigned int pipe)
 {
     <...
- drm_vblank_enable(dev, crtc)
+ drm_vblank_enable(dev, pipe)
     ...>
 }
