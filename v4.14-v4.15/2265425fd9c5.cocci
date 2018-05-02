//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression ME0;
identifier arg;
identifier cmd;
identifier file;
@@
 long lirc_dev_fop_ioctl(struct file * file, unsigned int cmd, unsigned long arg)
 {
     <...
- result = put_user(ME0, arg);
     ...>
 }
