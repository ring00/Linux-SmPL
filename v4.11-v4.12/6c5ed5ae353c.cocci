//# pattern-3, witnesses: 3
@@
expression F1;
identifier s;
@@
 const struct drm_connector_funcs s = {
-    .detect = F1,
 };
//# pattern-1, witnesses: 2
@@
@@
- drm_connector_detect(connector, false)
+ drm_helper_probe_detect(connector, NULL, false)
