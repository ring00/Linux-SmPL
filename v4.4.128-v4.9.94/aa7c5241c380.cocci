//# pattern-2, witnesses: 5
@@
identifier s;
@@
 const struct inode_operations s = {
-    .setxattr = shmem_setxattr,
-    .getxattr = shmem_getxattr,
-    .removexattr = shmem_removexattr,
+    .setxattr = generic_setxattr,
+    .getxattr = generic_getxattr,
+    .removexattr = generic_removexattr,
 };
