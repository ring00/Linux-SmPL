//# pattern-1, witnesses: 3
@r0@
identifier i, fn;
@@
struct drm_connector_helper_funcs i = {
    .get_modes = fn,
};
@@
identifier connector;
identifier r0.fn;
@@
 int fn(struct drm_connector * connector)
 {
     <...
- connector->display_info.max_hfreq = 200;
     ...>
 }
//# pattern-2, witnesses: 3
@r1@
identifier i, fn;
@@
struct drm_connector_helper_funcs i = {
    .get_modes = fn,
};
@@
identifier connector;
identifier r1.fn;
@@
 int fn(struct drm_connector * connector)
 {
     <...
- connector->display_info.min_hfreq = 0;
     ...>
 }
//# pattern-3, witnesses: 3
@r2@
identifier i, fn;
@@
struct drm_connector_helper_funcs i = {
    .get_modes = fn,
};
@@
identifier connector;
identifier r2.fn;
@@
 int fn(struct drm_connector * connector)
 {
     <...
- connector->display_info.max_vfreq = 200;
     ...>
 }
//# pattern-4, witnesses: 3
@r3@
identifier i, fn;
@@
struct drm_connector_helper_funcs i = {
    .get_modes = fn,
};
@@
identifier connector;
identifier r3.fn;
@@
 int fn(struct drm_connector * connector)
 {
     <...
- connector->display_info.min_vfreq = 0;
     ...>
 }
