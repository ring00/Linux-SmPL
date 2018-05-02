//# pattern-1, witnesses: 16
@@
expression E0;
@@
- drm_fb_helper_release_fbi(E0);
//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct drm_fb_helper_funcs i = {
    .fb_probe = fn,
};
@@
identifier helper;
identifier r0.fn;
identifier sizes;
@@
 int fn(struct drm_fb_helper * helper, struct drm_fb_helper_surface_size * sizes)
 { ... }
