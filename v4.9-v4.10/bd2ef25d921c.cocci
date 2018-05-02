//# pattern-3, witnesses: 16
@@
expression list listE0;
@@
- intel_rotation_90_or_270(listE0)
+ drm_rotation_90_or_270(listE0)
//# pattern-2, witnesses: 4
@@
expression E0;
@@
- E0->rotation & DRM_ROTATE_90 | DRM_ROTATE_270
+ drm_rotation_90_or_270(E0->rotation)
