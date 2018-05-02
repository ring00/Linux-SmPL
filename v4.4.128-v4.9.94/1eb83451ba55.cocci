//# pattern-1, witnesses: 7
@@
identifier dev;
identifier file_priv;
identifier fn;
identifier mode_cmd;
@@
- struct drm_framebuffer * fn(struct drm_device * dev, struct drm_file * file_priv, struct drm_mode_fb_cmd2 * mode_cmd)
+ struct drm_framebuffer * fn(struct drm_device * dev, struct drm_file * file_priv, const struct drm_mode_fb_cmd2 * mode_cmd)
 { ... }
//# pattern-11, witnesses: 3
@r0@
identifier i, fn;
@@
struct drm_mode_config_funcs i = {
    .fb_create = fn,
};
@@
identifier dev;
identifier filp;
identifier r0.fn;
identifier user_mode_cmd;
@@
 struct drm_framebuffer * fn(struct drm_device * dev, struct drm_file * filp, const struct drm_mode_fb_cmd2 * user_mode_cmd)
 { ... }
