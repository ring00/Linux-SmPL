//# pattern-2, witnesses: 2
@@
expression F1;
identifier s;
@@
 const struct file_operations s = {
-    .copy_file_range = F1,
 };
