//# pattern-16, witnesses: 22
@@
expression list listE0;
@@
- drm_atomic_state_free(listE0)
+ drm_atomic_state_put(listE0)
//# pattern-5, witnesses: 8
@@
@@
- return 0;
//# pattern-2, witnesses: 6
@@
expression E0;
@@
- if (E0) {
- drm_atomic_state_free(state);
- }
+ drm_atomic_state_put(state)
//# pattern-11, witnesses: 2
@@
@@
- drm_atomic_state_free(state);
