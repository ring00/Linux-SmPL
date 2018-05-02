//# pattern-3, witnesses: 2
@@
identifier s;
@@
 const struct drm_connector_funcs s = {
-    .fill_modes = drm_helper_probe_single_connector_modes_nomerge,
+    .fill_modes = drm_helper_probe_single_connector_modes,
 };
