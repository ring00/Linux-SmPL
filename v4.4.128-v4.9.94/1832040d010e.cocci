//# pattern-3, witnesses: 5
@@
identifier fn;
identifier new_state;
identifier p;
@@
- int fn(struct drm_plane * p, const struct drm_plane_state * new_state)
+ int fn(struct drm_plane * p, struct drm_plane_state * new_state)
 { ... }
//# pattern-1, witnesses: 3
@@
identifier fn;
identifier new_state;
identifier plane;
@@
- void fn(struct drm_plane * plane, const struct drm_plane_state * new_state)
+ void fn(struct drm_plane * plane, struct drm_plane_state * new_state)
 { ... }
//# pattern-2, witnesses: 3
@@
identifier fn;
identifier old_state;
identifier plane;
@@
 void fn(struct drm_plane * plane, struct drm_plane_state * old_state)
 { ... }
//# pattern-4, witnesses: 2
@@
identifier fn;
identifier old_state;
identifier p;
@@
 int fn(struct drm_plane * p, struct drm_plane_state * old_state)
 { ... }
