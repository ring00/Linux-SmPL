//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier rel_id;
identifier sdev;
@@
 int scsi_vpd_tpg_id(struct scsi_device * sdev, int * rel_id)
 {
     <...
- sdev->vpd_pg83
+ vpd_pg83->data
     ...>
 }
