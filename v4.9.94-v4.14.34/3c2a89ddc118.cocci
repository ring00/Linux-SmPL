//# pattern-1, witnesses: 2
@@
identifier s;
@@
 struct dst_ops s = {
-    . = (~0 >> 1),
+    .gc_thresh = 32768,
 };
