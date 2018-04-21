//# pattern-1, witnesses: 3
@@
identifier s;
@@
 const struct inode_operations s = {
-    .put_link = free_page_put_link,
+    .put_link = kfree_put_link,
 };
//# pattern-4, witnesses: 2
@@
@@
- get_zeroed_page(GFP_KERNEL)
+ kzalloc(PAGE_SIZE, GFP_KERNEL)
