//# pattern-1, witnesses: 21
@@
expression list listE0;
@@
- drm_property_unreference_blob(listE0)
+ drm_property_blob_put(listE0)
//# pattern-2, witnesses: 6
@@
expression list listE0;
@@
- drm_property_reference_blob(listE0)
+ drm_property_blob_get(listE0)
