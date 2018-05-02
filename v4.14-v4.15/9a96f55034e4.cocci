//# pattern-1, witnesses: 4
@@
expression list listE0;
@@
- drm_dev_unref(listE0)
+ drm_dev_put(listE0)
//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- drm_dev_ref(listE0)
+ drm_dev_get(listE0)
