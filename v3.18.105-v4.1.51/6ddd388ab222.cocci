//# pattern-1, witnesses: 2
@@
expression E0;
@@
- drm_atomic_set_crtc_for_plane(plane_state, E0)
+ drm_atomic_set_crtc_for_plane(state, plane, E0)
