//# pattern-14, witnesses: 3
@@
identifier s;
@@
 const struct drm_plane_funcs s = {
-    .update_plane = intel_update_plane,
-    .disable_plane = intel_disable_plane,
+    .update_plane = drm_plane_helper_update,
+    .disable_plane = drm_plane_helper_disable,
+    .atomic_duplicate_state = intel_plane_duplicate_state,
+    .atomic_destroy_state = intel_plane_destroy_state,
 };
