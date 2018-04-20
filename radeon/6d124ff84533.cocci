//# pattern-1, witnesses: 11
@r0@
identifier i, fn;
@@
struct drm_crtc_funcs i = {
    .gamma_set = fn,
};
@@
identifier blue;
identifier crtc;
identifier green;
identifier r0.fn;
identifier red;
identifier size;
typedef uint32_t;
@@
- int fn(struct drm_crtc * crtc, u16 * red, u16 * green, u16 * blue, uint32_t size)
+ int fn(struct drm_crtc * crtc, u16 * red, u16 * green, u16 * blue, uint32_t size, struct drm_modeset_acquire_ctx * ctx)
 { ... }
//# pattern-5, witnesses: 2
@r1@
identifier i, fn;
@@
struct drm_crtc_funcs i = {
    .gamma_set = fn,
};
@@
identifier blue;
identifier crtc;
identifier ctx;
identifier green;
identifier r1.fn;
identifier red;
identifier size;
typedef uint32_t;
@@
 int fn(struct drm_crtc * crtc, u16 * red, u16 * green, u16 * blue, uint32_t size, struct drm_modeset_acquire_ctx * ctx)
 { ... }
