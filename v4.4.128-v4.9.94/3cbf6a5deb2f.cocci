//# pattern-2, witnesses: 3
@@
expression E1;
identifier s;
@@
 struct drm_driver s = {
+    .driver_features = E1 | 2,
 };
//# pattern-4, witnesses: 2
@@
identifier s;
@@
 struct drm_driver s = {
 };
