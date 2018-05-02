//# pattern-2, witnesses: 13
@r0@
identifier i, fn;
@@
struct drm_driver i = {
    .unload = fn,
};
@@
identifier dev;
identifier r0.fn;
@@
- int fn(struct drm_device * dev)
+ void fn(struct drm_device * dev)
 {
     <...
- return 0;
     ...>
 }
//# pattern-1, witnesses: 5
@r1@
identifier i, fn;
@@
struct drm_driver i = {
    .unload = fn,
};
@@
identifier dev;
identifier r1.fn;
@@
 void fn(struct drm_device * dev)
 {
     <...
- return 0;
+ return;
     ...>
 }
