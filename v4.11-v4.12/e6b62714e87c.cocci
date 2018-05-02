//# pattern-2, witnesses: 14
@@
expression list listE0;
@@
- drm_gem_object_unreference_unlocked(listE0)
+ drm_gem_object_put_unlocked(listE0)
//# pattern-1, witnesses: 7
@@
expression list listE0;
@@
- drm_gem_object_reference(listE0)
+ drm_gem_object_get(listE0)
//# pattern-6, witnesses: 2
@@
expression list listE0;
@@
- drm_gem_object_handle_unreference_unlocked(listE0)
+ drm_gem_object_handle_put_unlocked(listE0)
