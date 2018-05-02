//# pattern-1, witnesses: 3
@@
expression E0;
@@
- drm_atomic_plane_disabling(plane, E0)
+ drm_atomic_plane_disabling(E0, plane->state)
