//# pattern-3, witnesses: 2
@@
identifier s;
@@
 const struct inode_operations s = {
-    .listxattr = generic_listxattr,
+    .listxattr = nfs4_listxattr,
 };
