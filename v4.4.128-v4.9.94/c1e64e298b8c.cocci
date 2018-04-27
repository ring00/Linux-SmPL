//# pattern-2, witnesses: 2
@@
identifier s;
@@
 struct proto s = {
+    .diag_destroy = tcp_abort,
 };
