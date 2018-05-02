//# pattern-1, witnesses: 21
@@
identifier s;
@@
 struct file_operations s = {
-    .read = new_sync_read,
-    .write = new_sync_write,
 };
//# pattern-2, witnesses: 2
@@
identifier s;
@@
 const struct file_operations s = {
-    .read = new_sync_read,
 };
