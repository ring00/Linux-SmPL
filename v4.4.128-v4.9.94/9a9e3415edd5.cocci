//# pattern-1, witnesses: 2
@@
expression E0;
identifier fn;
identifier item;
@@
 void fn(struct config_item * item)
 {
     <...
- configfs_undepend_item(&E0, item)
+ configfs_undepend_item(item)
     ...>
 }
