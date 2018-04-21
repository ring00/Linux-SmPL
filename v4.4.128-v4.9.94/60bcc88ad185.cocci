//# pattern-3, witnesses: 2
@@
identifier s;
@@
 const struct inode_operations s = {
+    .get_acl = fuse_get_acl,
+    .set_acl = fuse_set_acl,
 };
