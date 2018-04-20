//# pattern-3, witnesses: 8
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
//# pattern-2, witnesses: 6
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
//# pattern-6, witnesses: 4
@r2@
identifier i, fn;
@@
struct drm_connector_funcs i = {
    .dpms = fn,
};
@@
identifier connector;
identifier mode;
identifier r2.fn;
@@
 int fn(struct drm_connector * connector, int mode)
 {
     <...
- return;
+ return 0;
     ...>
 }
//# pattern-4, witnesses: 2
@r3@
identifier i, fn;
@@
struct drm_connector_funcs i = {
    .dpms = fn,
};
@@
identifier connector;
identifier mode;
identifier r3.fn;
@@
 int fn(struct drm_connector * connector, int mode)
 {
     ...
+ return 0;
 }
