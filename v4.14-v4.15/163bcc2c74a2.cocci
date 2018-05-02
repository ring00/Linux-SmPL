//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier old_state;
identifier r0.fn;
@@
 void fn(struct drm_atomic_state * old_state)
 {
     <...
- struct drm_crtc_state * new_crtc_state = new_crtc_state;
+ struct drm_crtc_state * old_crtc_state = old_crtc_state;
     ...>
 }
//# pattern-6, witnesses: 2
@@
@@
- commit = preceeding_commit(crtc);
+ commit = old_crtc_state->commit;
//# pattern-7, witnesses: 2
@@
@@
- &crtc->commit_lock;
