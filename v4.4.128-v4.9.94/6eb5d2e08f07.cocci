//# pattern-1, witnesses: 2
@@
identifier s;
@@
 const struct sock_diag_handler s = {
-    .dump = inet_diag_handler_dump,
+    .dump = inet_diag_handler_cmd,
+    .destroy = inet_diag_handler_cmd,
 };
