//# pattern-1, witnesses: 2
@@
identifier s;
@@
 struct dst_ops s = {
-    .local_out = __ip_local_out,
+    .local_out = __ip_local_out_sk,
 };
//# pattern-2, witnesses: 2
@@
identifier s;
@@
 struct dst_ops s = {
-    .local_out = __ip6_local_out,
+    .local_out = __ip6_local_out_sk,
 };
