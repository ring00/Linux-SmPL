//# pattern-1, witnesses: 20
@r0@
identifier i, fn;
@@
struct drm_driver i = {
    .unload = fn,
};
@@
identifier drm;
identifier r0.fn;
@@
- int fn(struct drm_device * drm)
+ void fn(struct drm_device * drm)
 {
     <...
- return 0;
     ...>
 }
//# pattern-2, witnesses: 6
@r1@
identifier i, fn;
@@
struct drm_driver i = {
    .unload = fn,
};
@@
expression E0;
identifier drm;
identifier r1.fn;
@@
 void fn(struct drm_device * drm)
 {
     <...
- return E0;
+ return;
     ...>
 }
