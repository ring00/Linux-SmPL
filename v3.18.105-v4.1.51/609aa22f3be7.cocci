//# pattern-1, witnesses: 4
@@
expression E0;
expression E1;
@@
- if (E0->ordered_tags) {
- E1;
- }
//# pattern-5, witnesses: 3
@@
identifier fn;
identifier qdepth;
identifier reason;
identifier sdev;
@@
 int fn(struct scsi_device * sdev, int qdepth, int reason)
 {
     <...
- sdev_printk(KERN_INFO, sdev, "qdepth(%d), tagged(%d), simple(%d), ordered(%d), scsi_level(%d), cmd_que(%d)\n", sdev->queue_depth, sdev->tagged_supported, sdev->simple_tags, sdev->ordered_tags, sdev->scsi_level, sdev->inquiry[7] & 2 >> 1)
+ sdev_printk(KERN_INFO, sdev, "qdepth(%d), tagged(%d), simple(%d), scsi_level(%d), cmd_que(%d)\n", sdev->queue_depth, sdev->tagged_supported, sdev->simple_tags, sdev->scsi_level, sdev->inquiry[7] & 2 >> 1)
     ...>
 }
//# pattern-4, witnesses: 2
@@
identifier scmd;
identifier shost;
@@
 int _scsih_qcmd(struct Scsi_Host * shost, struct scsi_cmnd * scmd)
 {
     <...
- if (!sas_device_priv_data->flags & MPT_DEVICE_FLAGS_INIT) {
- if (scmd->device->tagged_supported) {
- if (scmd->device->ordered_tags) {
- mpi_control |= MPI2_SCSIIO_CONTROL_ORDEREDQ;
- }
- }
- }
     ...>
 }
