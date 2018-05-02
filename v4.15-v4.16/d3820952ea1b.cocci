//# pattern-1, witnesses: 3
@@
identifier s;
@@
 struct drm_driver s = {
-    .lastclose = tinydrm_lastclose,
+    .lastclose = drm_fb_helper_lastclose,
 };
