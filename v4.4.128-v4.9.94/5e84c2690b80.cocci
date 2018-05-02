//# pattern-1, witnesses: 11
@@
identifier async;
typedef bool;
identifier drm;
identifier fn;
identifier state;
@@
 int fn(struct drm_device * drm, struct drm_atomic_state * state, bool async)
 {
     <...
- drm_atomic_helper_swap_state(drm, state)
+ drm_atomic_helper_swap_state(state, true)
     ...>
 }
