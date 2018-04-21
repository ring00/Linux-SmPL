//# pattern-2, witnesses: 2
@@
identifier s;
@@
 const struct dentry_operations s = {
+    .d_real = ovl_d_real,
 };
