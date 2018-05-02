//# pattern-1, witnesses: 5
@@
expression E0;
expression E1;
@@
- drm_atomic_helper_commit_planes(E0, E1)
+ drm_atomic_helper_commit_planes(E0, E1, false)
