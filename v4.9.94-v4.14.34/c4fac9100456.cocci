//# pattern-7, witnesses: 3
@@
identifier s;
@@
 struct p9_trans_module s = {
+    .show_options = p9_fd_show_options,
 };
//# pattern-1, witnesses: 2
@@
identifier s;
@@
 const struct super_operations s = {
-    .show_options = generic_show_options,
+    .show_options = v9fs_show_options,
 };
