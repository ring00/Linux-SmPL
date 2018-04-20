unknown kind: PredefinedExpr
unknown kind: PredefinedExpr
unknown kind: PredefinedExpr
unknown kind: PredefinedExpr
//# pattern-23, witnesses: 4
@@
identifier crtc;
identifier dev;
identifier fn;
@@
- int fn(struct drm_device * dev, int crtc)
+ int fn(struct drm_device * dev, unsigned int pipe)
 {
     <...
- DRM_ERROR("tried to enable vblank on non-existent crtc %d\n", crtc)
+ DRM_ERROR("tried to enable vblank on non-existent crtc %u\n", pipe)
     ...>
 }
//# pattern-72, witnesses: 3
@@
identifier dev;
identifier fn;
identifier pipe;
@@
 int fn(struct drm_device * dev, unsigned int pipe)
 { ... }
//# pattern-76, witnesses: 3
@@
identifier drm;
identifier fn;
identifier pipe;
@@
- void fn(struct drm_device * drm, int pipe)
+ void fn(struct drm_device * drm, unsigned int pipe)
 { ... }
//# pattern-1, witnesses: 2
@@
identifier dev;
identifier fn;
identifier pipe;
@@
 void fn(struct drm_device * dev, unsigned int pipe)
 {
     <...
- nv_crtc->index == head
+ nv_crtc->index == pipe
     ...>
 }
//# pattern-2, witnesses: 2
@@
identifier drm;
identifier fn;
identifier pipe;
typedef u32;
@@
- u32 fn(struct drm_device * drm, int pipe)
+ u32 fn(struct drm_device * drm, unsigned int pipe)
 { ... }
//# pattern-17, witnesses: 2
@@
identifier dev;
identifier fn;
identifier pipe;
@@
 void fn(struct drm_device * dev, unsigned int pipe)
 {
     <...
- DRM_ERROR("%s:  bad crtc %d\n", , crtc)
+ DRM_ERROR("%s:  bad crtc %u\n", , pipe)
     ...>
 }
//# pattern-27, witnesses: 2
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
//# pattern-31, witnesses: 2
@@
identifier dev;
identifier fn;
identifier pipe;
@@
 int fn(struct drm_device * dev, unsigned int pipe)
 {
     <...
- rcdu->crtcs[crtc]
+ rcdu->crtcs[pipe]
     ...>
 }
//# pattern-32, witnesses: 2
@@
identifier dev;
identifier fn;
identifier pipe;
@@
 int fn(struct drm_device * dev, unsigned int pipe)
 { ... }
//# pattern-33, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier drm_dev;
identifier pipe;
@@
 void sti_crtc_disable_vblank(struct drm_device * drm_dev, unsigned int pipe)
 {
     <...
- compo->mixer[crtc]
+ compo->mixer[pipe]
     ...>
 }
//# pattern-36, witnesses: 2
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
//# pattern-38, witnesses: 2
@@
identifier dev;
identifier fn;
identifier pipe;
typedef u32;
@@
 u32 fn(struct drm_device * dev, unsigned int pipe)
 { ... }
//# pattern-43, witnesses: 2
@r2@
identifier i, fn;
@@
struct drm_driver i = {
    .get_vblank_counter = fn,
};
@@
identifier dev;
identifier pipe;
identifier r2.fn;
typedef u32;
@@
 u32 fn(struct drm_device * dev, unsigned int pipe)
 {
     <...
- DRM_ERROR("Invalid crtc %d\n", crtc)
+ DRM_ERROR("Invalid crtc %u\n", pipe)
     ...>
 }
//# pattern-47, witnesses: 2
@@
identifier dev;
identifier fn;
identifier pipe;
@@
 void fn(struct drm_device * dev, unsigned int pipe)
 {
     <...
- DRM_ERROR("%s:  bad crtc %d\n", , crtc)
+ DRM_ERROR("%s:  bad crtc %u\n", , pipe)
     ...>
 }
//# pattern-57, witnesses: 2
@@
identifier dev;
identifier fn;
identifier pipe;
@@
 int fn(struct drm_device * dev, unsigned int pipe)
 { ... }
//# pattern-62, witnesses: 2
@@
identifier drm;
identifier fn;
identifier pipe;
@@
 int fn(struct drm_device * drm, unsigned int pipe)
 { ... }
//# pattern-65, witnesses: 2
@@
identifier dev;
identifier fn;
identifier pipe;
@@
 int fn(struct drm_device * dev, unsigned int pipe)
 { ... }
//# pattern-67, witnesses: 2
@@
identifier dev;
identifier fn;
identifier pipe;
@@
 int fn(struct drm_device * dev, unsigned int pipe)
 { ... }
//# pattern-77, witnesses: 2
@@
identifier dev;
identifier fn;
identifier pipe;
@@
 int fn(struct drm_device * dev, unsigned int pipe)
 { ... }
