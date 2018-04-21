//# pattern-2, witnesses: 2
@@
expression F1;
identifier s;
@@
 const struct file_operations s = {
-    .mmap = F1,
+    .mmap = ext2_file_mmap,
 };
