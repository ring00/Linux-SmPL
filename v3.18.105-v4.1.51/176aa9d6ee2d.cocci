//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier arg;
identifier cmd;
identifier ndelay;
identifier sdev;
@@
 int scsi_nonblockable_ioctl(struct scsi_device * sdev, int cmd, void * arg, int ndelay)
 {
     <...
- int val = val;
     ...>
 }
