//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
typedef bool;
identifier fbdev_cma;
identifier r0.fn;
identifier state;
@@
- void fn(struct drm_fbdev_cma * fbdev_cma, int state)
+ void fn(struct drm_fbdev_cma * fbdev_cma, bool state)
 { ... }
