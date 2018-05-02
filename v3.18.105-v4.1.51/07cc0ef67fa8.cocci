//# pattern-3, witnesses: 3
@@
expression E0;
@@
- drm_atomic_set_crtc_for_plane(state, plane, E0)
+ drm_atomic_set_crtc_for_plane(plane_state, E0)
//# pattern-8, witnesses: 2
@@
expression E0;
@@
- drm_atomic_set_crtc_for_plane(state, crtc->primary, E0)
+ drm_atomic_set_crtc_for_plane(primary_state, E0)
