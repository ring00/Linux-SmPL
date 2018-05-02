//# pattern-7, witnesses: 15
@@
expression V1;
identifier s;
@@
 struct config_item_type s = {
-    .ct_item_ops = &V1,
 };
//# pattern-6, witnesses: 9
@@
expression F1;
expression F2;
identifier s;
@@
 struct configfs_item_operations s = {
-    .show_attribute = F1,
-    .store_attribute = F2,
 };
