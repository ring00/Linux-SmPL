//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct target_backend_ops i = {
    .free_device = fn,
};
@@
expression E1;
expression ME0;
identifier dev;
@@
 void iblock_free_device(struct se_device * dev)
 {
     <...
- struct iblock_dev * ib_dev = IBLOCK_DEV(dev);
- if (ME0 != NULL) {
- E1;
- }
     ...>
 }
//# pattern-13, witnesses: 2
@@
@@
- &udev->commands_lock;
