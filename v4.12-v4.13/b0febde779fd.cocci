//# pattern-1, witnesses: 3
@@
identifier connector;
identifier fn;
identifier mode;
@@
- enum drm_mode_status fn(struct drm_connector * connector, struct drm_display_mode * mode)
+ enum drm_mode_status fn(struct drm_connector * connector, const struct drm_display_mode * mode)
 { ... }
