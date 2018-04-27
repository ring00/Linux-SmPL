//# pattern-1, witnesses: 2
@@
identifier s;
@@
 struct proto s = {
+    .diag_destroy = udp_abort,
 };
