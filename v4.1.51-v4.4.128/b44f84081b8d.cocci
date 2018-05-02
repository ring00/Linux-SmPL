//# pattern-1, witnesses: 9
@@
identifier s;
@@
 struct drm_driver s = {
-    .get_vblank_counter = drm_vblank_count,
+    .get_vblank_counter = drm_vblank_no_hw_counter,
 };
