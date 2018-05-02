//# pattern-10, witnesses: 10
@@
expression E0;
@@
- E0;
//# pattern-5, witnesses: 5
@@
identifier s;
@@
- char * s = {
+ struct drm_format_name_buf s = {
 };
//# pattern-12, witnesses: 4
@@
expression S0;
@@
- DRM_DEBUG_KMS(S0, format_name);
- kfree(format_name);
+ DRM_DEBUG_KMS(S0, );
//# pattern-8, witnesses: 2
@r0@
identifier i, fn;
@@
struct drm_plane_helper_funcs i = {
    .atomic_check = fn,
};
@@
identifier plane;
identifier state;
@@
 int intel_plane_atomic_check(struct drm_plane * plane, struct drm_plane_state * state)
 {
     <...
- format_name;
     ...>
 }
//# pattern-9, witnesses: 2
@@
identifier dev;
identifier intel_fb;
identifier mode_cmd;
identifier obj;
@@
 int intel_framebuffer_init(struct drm_device * dev, struct intel_framebuffer * intel_fb, struct drm_mode_fb_cmd2 * mode_cmd, struct drm_i915_gem_object * obj)
 {
     <...
- format_name;
     ...>
 }
