//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier r0.fn;
identifier state;
@@
- void fn(struct drm_atomic_state * state)
+ void fn(struct drm_atomic_state * old_state)
 {
     <...
- state->crtcs
+ old_state->crtcs
     ...>
 }
