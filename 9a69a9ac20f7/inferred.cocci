//# pattern-3, witnesses: 9
@r0@
identifier i, fn;
@@
struct drm_connector_funcs i = {
    .dpms = fn,
};
@@
identifier connector;
identifier mode;
identifier r0.fn;
@@
- void fn(struct drm_connector * connector, int mode)
+ int fn(struct drm_connector * connector, int mode)
 {
     ...
+ return 0;
 }
//# pattern-2, witnesses: 8
@r1@
identifier i, fn;
@@
struct drm_connector_funcs i = {
    .dpms = fn,
};
@@
identifier connector;
identifier mode;
identifier r1.fn;
@@
 int fn(struct drm_connector * connector, int mode)
 {
     <...
- return;
+ return 0;
     ...>
 }
