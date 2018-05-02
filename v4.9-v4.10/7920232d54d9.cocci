//# pattern-3, witnesses: 2
@@
identifier in;
identifier out;
@@
 int drm_mode_convert_umode(struct drm_display_mode * out, const struct drm_mode_modeinfo * in)
 { ... }
//# pattern-4, witnesses: 2
@@
identifier in;
identifier out;
@@
 void drm_mode_convert_to_umode(struct drm_mode_modeinfo * out, const struct drm_display_mode * in)
 { ... }
