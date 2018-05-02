//# pattern-2, witnesses: 4
@r0@
identifier i, fn;
@@
struct drm_crtc_funcs i = {
    .set_config = fn,
};
@@
identifier r0.fn;
identifier set;
@@
- int fn(struct drm_mode_set * set)
+ int fn(struct drm_mode_set * set, struct drm_modeset_acquire_ctx * ctx)
 {
     <...
- drm_crtc_helper_set_config(set)
+ drm_crtc_helper_set_config(set, ctx)
     ...>
 }
//# pattern-3, witnesses: 3
@r1@
identifier i, fn;
@@
struct drm_crtc_funcs i = {
    .set_config = fn,
};
@@
identifier ctx;
identifier r1.fn;
identifier set;
@@
 int fn(struct drm_mode_set * set, struct drm_modeset_acquire_ctx * ctx)
 { ... }
//# pattern-1, witnesses: 2
@@
expression E0;
@@
- crtc->funcs->set_config(E0)
+ crtc->funcs->set_config(E0, ctx)
//# pattern-4, witnesses: 2
@r2@
identifier i, fn;
@@
struct drm_crtc_funcs i = {
    .set_config = fn,
};
@@
identifier ctx;
identifier r2.fn;
identifier set;
@@
 int fn(struct drm_mode_set * set, struct drm_modeset_acquire_ctx * ctx)
 { ... }
