//# pattern-1, witnesses: 2
@@
expression F1;
identifier s;
@@
 struct drm_mode_config_helper_funcs s = {
-    .atomic_commit_tail = F1,
+    .atomic_commit_tail = drm_atomic_helper_commit_tail_rpm,
 };
