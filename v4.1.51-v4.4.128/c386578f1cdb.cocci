//# pattern-1, witnesses: 2
@@
identifier s;
@@
 struct dst_ops s = {
-    .gc_thresh = 32768,
+    . = (~0 >> 1),
 };
