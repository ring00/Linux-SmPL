//# pattern-5, witnesses: 2
@@
expression F1;
identifier s;
@@
 struct drm_driver s = {
-    .get_vblank_timestamp = F1,
+    .get_vblank_timestamp = drm_calc_vbltimestamp_from_scanoutpos,
 };
