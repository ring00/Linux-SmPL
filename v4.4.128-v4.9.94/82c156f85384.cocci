//# pattern-1, witnesses: 12
@@
expression F1;
identifier s;
@@
 struct file_operations s = {
-    .splice_read = F1,
+    .splice_read = generic_file_splice_read,
 };
//# pattern-4, witnesses: 2
@@
@@
- ll_env_args(env, IO_NORMAL)
+ ll_env_args(env)
