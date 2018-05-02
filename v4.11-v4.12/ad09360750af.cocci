//# pattern-1, witnesses: 14
@@
expression list listE0;
@@
- drm_connector_unreference(listE0)
+ drm_connector_put(listE0)
//# pattern-2, witnesses: 6
@@
expression list listE0;
@@
- drm_connector_reference(listE0)
+ drm_connector_get(listE0)
