//# pattern-1, witnesses: 5
@r0@
identifier i, fn;
@@
struct drm_crtc_funcs i = {
    .page_flip = fn,
};
@@
identifier crtc;
identifier event;
identifier fb;
identifier flags;
identifier r0.fn;
typedef uint32_t;
@@
- int fn(struct drm_crtc * crtc, struct drm_framebuffer * fb, struct drm_pending_vblank_event * event, uint32_t flags)
+ int fn(struct drm_crtc * crtc, struct drm_framebuffer * fb, struct drm_pending_vblank_event * event, uint32_t flags, struct drm_modeset_acquire_ctx * ctx)
 { ... }
//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct drm_crtc_funcs i = {
    .page_flip_target = fn,
};
@@
identifier crtc;
identifier event;
identifier fb;
identifier page_flip_flags;
identifier r1.fn;
identifier target;
typedef uint32_t;
@@
- int fn(struct drm_crtc * crtc, struct drm_framebuffer * fb, struct drm_pending_vblank_event * event, uint32_t page_flip_flags, uint32_t target)
+ int fn(struct drm_crtc * crtc, struct drm_framebuffer * fb, struct drm_pending_vblank_event * event, uint32_t page_flip_flags, uint32_t target, struct drm_modeset_acquire_ctx * ctx)
 { ... }
//# pattern-7, witnesses: 2
@r2@
identifier i, fn;
@@
struct drm_crtc_funcs i = {
    .page_flip = fn,
};
@@
identifier crtc;
identifier ctx;
identifier event;
identifier fb;
identifier flags;
identifier r2.fn;
typedef uint32_t;
@@
 int fn(struct drm_crtc * crtc, struct drm_framebuffer * fb, struct drm_pending_vblank_event * event, uint32_t flags, struct drm_modeset_acquire_ctx * ctx)
 { ... }
