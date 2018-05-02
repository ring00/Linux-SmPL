//# pattern-3, witnesses: 3
@r0@
identifier i, fn;
@@
struct drm_plane_funcs i = {
    .disable_plane = fn,
};
@@
identifier plane;
identifier r0.fn;
@@
- int fn(struct drm_plane * plane)
+ int fn(struct drm_plane * plane, struct drm_modeset_acquire_ctx * ctx)
 { ... }
//# pattern-2, witnesses: 2
@@
@@
- plane->funcs->disable_plane(plane)
+ plane->funcs->disable_plane(plane, ctx)
