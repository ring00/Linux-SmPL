//# pattern-3, witnesses: 7
@@
identifier s;
@@
 const struct file_operations s = {
+    .clone_file_range = cifs_clone_file_range,
 };
//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct file_operations i = {
    .unlocked_ioctl = fn,
};
@@
identifier arg;
identifier cmd;
identifier file;
@@
 long btrfs_ioctl(struct file * file, unsigned int cmd, unsigned long arg)
 { ... }
