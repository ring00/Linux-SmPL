//# pattern-5, witnesses: 3
@r0@
identifier i, fn;
@@
struct configfs_item_operations i = {
    .drop_link = fn,
};
@@
identifier r0.fn;
identifier usb_cfg_ci;
identifier usb_func_ci;
@@
- int fn(struct config_item * usb_cfg_ci, struct config_item * usb_func_ci)
+ void fn(struct config_item * usb_cfg_ci, struct config_item * usb_func_ci)
 {
     <...
- return 0;
     ...>
 }
//# pattern-6, witnesses: 2
@r1@
identifier i, fn;
@@
struct configfs_item_operations i = {
    .drop_link = fn,
};
@@
identifier parent;
identifier r1.fn;
identifier target;
@@
 void fn(struct config_item * parent, struct config_item * target)
 {
     <...
- return -EINVAL;
+ return;
     ...>
 }
