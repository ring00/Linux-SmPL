//# pattern-1, witnesses: 12
@@
identifier cmd;
identifier drm;
identifier file;
identifier fn;
@@
- struct drm_framebuffer * fn(struct drm_device * drm, struct drm_file * file, struct drm_mode_fb_cmd2 * cmd)
+ struct drm_framebuffer * fn(struct drm_device * drm, struct drm_file * file, const struct drm_mode_fb_cmd2 * cmd)
 { ... }
//# pattern-24, witnesses: 4
@@
identifier dev;
identifier file_priv;
identifier fn;
identifier mode_cmd2;
@@
 struct drm_framebuffer * fn(struct drm_device * dev, struct drm_file * file_priv, const struct drm_mode_fb_cmd2 * mode_cmd2)
 { ... }
//# pattern-17, witnesses: 2
@@
identifier dev;
identifier file;
identifier fn;
identifier mode_cmd;
@@
 struct drm_framebuffer * fn(struct drm_device * dev, struct drm_file * file, const struct drm_mode_fb_cmd2 * mode_cmd)
 { ... }
//# pattern-21, witnesses: 2
@@
identifier dev;
identifier file_priv;
identifier fn;
identifier mode_cmd;
@@
 struct drm_framebuffer * fn(struct drm_device * dev, struct drm_file * file_priv, const struct drm_mode_fb_cmd2 * mode_cmd)
 { ... }
//# pattern-32, witnesses: 2
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
