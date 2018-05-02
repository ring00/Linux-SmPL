//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct drm_plane_helper_funcs i = {
    .prepare_fb = fn,
};
@@
identifier fb;
identifier plane;
identifier r0.fn;
@@
- int fn(struct drm_plane * plane, struct drm_framebuffer * fb)
+ int fn(struct drm_plane * plane, struct drm_framebuffer * fb, const struct drm_plane_state * new_state)
 { ... }
