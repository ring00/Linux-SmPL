//# pattern-1, witnesses: 3
@@
expression F1;
identifier s;
@@
 const struct inode_operations s = {
-    .put_link = F1,
+    .put_link = free_page_put_link,
 };
