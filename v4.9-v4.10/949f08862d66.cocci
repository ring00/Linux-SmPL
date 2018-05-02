//# pattern-1, witnesses: 14
@@
expression F1;
identifier s;
@@
 const struct drm_connector_funcs s = {
-    .detect = F1,
 };
//# pattern-2, witnesses: 3
@@
expression list listE0;
@@
- connector->funcs->detect(listE0)
+ drm_connector_detect(listE0)
