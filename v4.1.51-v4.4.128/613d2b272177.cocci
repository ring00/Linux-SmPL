//# pattern-1, witnesses: 4
@r0@
identifier i, fn;
@@
struct drm_crtc_helper_funcs i = {
    .atomic_begin = fn,
};
@@
identifier crtc;
identifier r0.fn;
@@
- void fn(struct drm_crtc * crtc)
+ void fn(struct drm_crtc * crtc, struct drm_crtc_state * old_crtc_state)
 { ... }
//# pattern-9, witnesses: 4
@r1@
identifier i, fn;
@@
struct drm_crtc_helper_funcs i = {
    .atomic_flush = fn,
};
@@
identifier crtc;
identifier old_crtc_state;
identifier r1.fn;
@@
 void fn(struct drm_crtc * crtc, struct drm_crtc_state * old_crtc_state)
 { ... }
//# pattern-8, witnesses: 2
@r2@
identifier i, fn;
@@
struct drm_crtc_helper_funcs i = {
    .atomic_begin = fn,
};
@@
identifier crtc;
identifier old_crtc_state;
identifier r2.fn;
@@
 void fn(struct drm_crtc * crtc, struct drm_crtc_state * old_crtc_state)
 { ... }
//# pattern-10, witnesses: 2
@r3@
identifier i, fn;
@@
struct drm_crtc_helper_funcs i = {
    .atomic_flush = fn,
};
@@
identifier crtc;
identifier old_crtc_state;
identifier r3.fn;
@@
 void fn(struct drm_crtc * crtc, struct drm_crtc_state * old_crtc_state)
 { ... }
