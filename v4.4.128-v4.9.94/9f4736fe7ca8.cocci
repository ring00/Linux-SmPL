//# pattern-2, witnesses: 2
@@
identifier s;
@@
 const struct vm_operations_struct s = {
-    .open = blkdev_vm_open,
-    .close = blkdev_vm_close,
 };
