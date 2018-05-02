//# pattern-1, witnesses: 31
@@
identifier s;
@@
 const struct inode_operations s = {
-    .setxattr = generic_setxattr,
-    .getxattr = generic_getxattr,
-    .removexattr = generic_removexattr,
 };
