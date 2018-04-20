//# pattern-1, witnesses: 53
@@
identifier s;
@@
 struct file_operations s = {
-    .read = new_sync_read,
-    .write = new_sync_write,
 };
//# pattern-2, witnesses: 3
@@
identifier s;
@@
 const struct file_operations s = {
-    .read = new_sync_read,
 };
