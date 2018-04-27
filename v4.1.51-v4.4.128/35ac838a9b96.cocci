//# pattern-2, witnesses: 2
@@
identifier s;
@@
 const struct sock_diag_handler s = {
+    .get_info = inet_diag_handler_get_info,
 };
