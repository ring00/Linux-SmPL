//# pattern-9, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
expression IL1;
identifier arg;
identifier cmd;
identifier sdev;
@@
 int scsi_ioctl(struct scsi_device * sdev, int cmd, void * arg)
 {
     <...
- if (!E0) {
- return -IL1;
- }
     ...>
 }
