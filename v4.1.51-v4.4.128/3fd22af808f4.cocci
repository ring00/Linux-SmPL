//# pattern-1, witnesses: 2
@@
identifier s;
@@
 const struct inet_diag_handler s = {
+    .idiag_info_size = sizeof(unsigned long),
 };
//# pattern-2, witnesses: 2
@@
identifier s;
@@
 const struct inet_diag_handler s = {
+    .idiag_info_size = 0,
 };
