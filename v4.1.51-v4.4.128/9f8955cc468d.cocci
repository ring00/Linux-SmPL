//# pattern-3, witnesses: 2
@@
identifier s;
@@
 struct dst_ops s = {
-    .local_out = __ip6_local_out_sk,
+    .local_out = __ip6_local_out,
 };
