//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression ME0;
identifier dev;
identifier state;
@@
 int drm_atomic_state_init(struct drm_device * dev, struct drm_atomic_state * state)
 {
     <...
- ME0 = kcalloc(state->num_connector, sizeof(unsigned long), GFP_KERNEL);
     ...>
 }
