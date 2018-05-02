//# pattern-30, witnesses: 3
@@
identifier dev;
identifier fn;
identifier pipe;
@@
- int fn(struct drm_device * dev, int pipe)
+ int fn(struct drm_device * dev, unsigned int pipe)
 { ... }
//# pattern-35, witnesses: 3
@@
identifier dev;
identifier fn;
identifier pipe;
@@
 int fn(struct drm_device * dev, unsigned int pipe)
 { ... }
//# pattern-1, witnesses: 2
@@
identifier dev;
identifier fn;
identifier head;
@@
- void fn(struct drm_device * dev, int head)
+ void fn(struct drm_device * dev, unsigned int pipe)
 {
     <...
- nv_crtc->index == head
+ nv_crtc->index == pipe
     ...>
 }
//# pattern-2, witnesses: 2
@@
identifier dev;
identifier fn;
identifier pipe;
typedef u32;
@@
- u32 fn(struct drm_device * dev, int pipe)
+ u32 fn(struct drm_device * dev, unsigned int pipe)
 { ... }
//# pattern-13, witnesses: 2
@@
identifier drm;
identifier fn;
identifier pipe;
@@
 int fn(struct drm_device * drm, unsigned int pipe)
 {
     <...
- imxdrm->crtc[crtc]
+ imxdrm->crtc[pipe]
     ...>
 }
//# pattern-17, witnesses: 2
@@
identifier dev;
identifier fn;
identifier pipe;
@@
 void fn(struct drm_device * dev, unsigned int pipe)
 {
     <...
- amdgpu_crtc_idx_to_irq_type(adev, crtc)
+ amdgpu_crtc_idx_to_irq_type(adev, pipe)
     ...>
 }
//# pattern-19, witnesses: 2
@@
identifier dev;
identifier fn;
identifier pipe;
typedef u32;
@@
 u32 fn(struct drm_device * dev, unsigned int pipe)
 { ... }
//# pattern-41, witnesses: 2
@r0@
identifier i, fn;
@@
struct drm_driver i = {
    .disable_vblank = fn,
};
@@
identifier dev;
identifier pipe;
identifier r0.fn;
@@
 void fn(struct drm_device * dev, unsigned int pipe)
 { ... }
