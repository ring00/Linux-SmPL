//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct drm_plane_funcs i = {
    .update_plane = fn,
};
@@
identifier crtc;
identifier crtc_h;
identifier crtc_w;
identifier crtc_x;
identifier crtc_y;
identifier fb;
identifier plane;
identifier r0.fn;
identifier src_h;
identifier src_w;
identifier src_x;
identifier src_y;
typedef uint32_t;
@@
- int fn(struct drm_plane * plane, struct drm_crtc * crtc, struct drm_framebuffer * fb, int crtc_x, int crtc_y, unsigned int crtc_w, unsigned int crtc_h, uint32_t src_x, uint32_t src_y, uint32_t src_w, uint32_t src_h)
+ int fn(struct drm_plane * plane, struct drm_crtc * crtc, struct drm_framebuffer * fb, int crtc_x, int crtc_y, unsigned int crtc_w, unsigned int crtc_h, uint32_t src_x, uint32_t src_y, uint32_t src_w, uint32_t src_h, struct drm_modeset_acquire_ctx * ctx)
 {
     <...
- drm_atomic_helper_update_plane(plane, crtc, fb, crtc_x, crtc_y, crtc_w, crtc_h, src_x, src_y, src_w, src_h)
+ drm_atomic_helper_update_plane(plane, crtc, fb, crtc_x, crtc_y, crtc_w, crtc_h, src_x, src_y, src_w, src_h, ctx)
     ...>
 }
//# pattern-3, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier crtc;
identifier crtc_h;
identifier crtc_w;
identifier crtc_x;
identifier crtc_y;
identifier ctx;
identifier fb;
identifier plane;
identifier r1.fn;
identifier src_h;
identifier src_w;
identifier src_x;
identifier src_y;
typedef uint32_t;
@@
 int fn(struct drm_plane * plane, struct drm_crtc * crtc, struct drm_framebuffer * fb, int crtc_x, int crtc_y, unsigned int crtc_w, unsigned int crtc_h, uint32_t src_x, uint32_t src_y, uint32_t src_w, uint32_t src_h, struct drm_modeset_acquire_ctx * ctx)
 { ... }
//# pattern-4, witnesses: 2
@r2@
identifier i, fn;
@@
struct drm_plane_funcs i = {
    .update_plane = fn,
};
@@
identifier crtc;
identifier crtc_h;
identifier crtc_w;
identifier crtc_x;
identifier crtc_y;
identifier ctx;
identifier fb;
identifier plane;
identifier r2.fn;
identifier src_h;
identifier src_w;
identifier src_x;
identifier src_y;
typedef uint32_t;
@@
 int fn(struct drm_plane * plane, struct drm_crtc * crtc, struct drm_framebuffer * fb, int crtc_x, int crtc_y, unsigned int crtc_w, unsigned int crtc_h, uint32_t src_x, uint32_t src_y, uint32_t src_w, uint32_t src_h, struct drm_modeset_acquire_ctx * ctx)
 { ... }
