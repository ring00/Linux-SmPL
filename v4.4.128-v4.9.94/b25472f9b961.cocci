//# pattern-1, witnesses: 4
@@
expression F1;
identifier s;
@@
 const struct file_operations s = {
-    .llseek = F1,
+    .llseek = no_seek_end_llseek,
 };
