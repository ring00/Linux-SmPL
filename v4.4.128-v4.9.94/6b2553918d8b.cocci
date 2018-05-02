//# pattern-2, witnesses: 5
@@
identifier s;
@@
 const struct inode_operations s = {
-    .follow_link = page_follow_link_light,
+    .get_link = page_get_link,
 };
//# pattern-4, witnesses: 3
@@
identifier s;
@@
 const struct inode_operations s = {
-    .follow_link = simple_follow_link,
+    .get_link = simple_get_link,
 };
