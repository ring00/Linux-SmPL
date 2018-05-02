//# pattern-1, witnesses: 3
@@
expression V0;
@@
- state->connectors[V0]
+ state->connectors[V0].ptr
//# pattern-4, witnesses: 3
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier connector;
identifier state;
@@
 struct drm_connector_state * drm_atomic_get_connector_state(struct drm_atomic_state * state, struct drm_connector * connector)
 {
     <...
- state->connector_states[index]
+ state->connectors[index].state
     ...>
 }
//# pattern-2, witnesses: 2
@@
@@
- state->connector_states[i]
+ state->connectors[i].state
//# pattern-6, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier connector;
identifier state;
@@
 struct drm_connector_state * drm_atomic_get_connector_state(struct drm_atomic_state * state, struct drm_connector * connector)
 {
     <...
- struct drm_connector_state ** cs = cs;
- cs = krealloc(state->connector_states, alloc * sizeof(unsigned long), GFP_KERNEL);
     ...>
 }
