//# pattern-3, witnesses: 3
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier cmnd;
@@
 int fc_block_scsi_eh(struct scsi_cmnd * cmnd)
 {
     <...
- struct Scsi_Host * shost = cmnd->device->host;
- unsigned long flags = flags;
- E0;
     ...>
 }
