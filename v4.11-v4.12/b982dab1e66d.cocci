//# pattern-1, witnesses: 31
@@
expression list listE0;
@@
- drm_connector_list_iter_put(listE0)
+ drm_connector_list_iter_end(listE0)
//# pattern-2, witnesses: 25
@@
expression list listE0;
@@
- drm_connector_list_iter_get(listE0)
+ drm_connector_list_iter_begin(listE0)
