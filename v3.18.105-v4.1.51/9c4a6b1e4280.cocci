//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier fmt;
identifier level;
identifier scmd;
@@
- int scmd_printk(const char * level, const struct scsi_cmnd * scmd, const char * fmt)
+ void scmd_printk(const char * level, const struct scsi_cmnd * scmd, const char * fmt)
 {
     <...
- return 0;
+ return;
     ...>
 }
//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier fmt;
identifier level;
identifier name;
identifier sdev;
@@
- int sdev_prefix_printk(const char * level, const struct scsi_device * sdev, const char * name, const char * fmt)
+ void sdev_prefix_printk(const char * level, const struct scsi_device * sdev, const char * name, const char * fmt)
 {
     <...
- return 0;
+ return;
     ...>
 }
