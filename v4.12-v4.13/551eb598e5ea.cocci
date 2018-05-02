//# pattern-1, witnesses: 2
@@
identifier fn;
identifier sas_device_priv_data;
identifier sdev;
@@
 void fn(struct scsi_device * sdev, struct MPT3SAS_DEVICE * sas_device_priv_data)
 {
     <...
- scsi_internal_device_block(sdev, false)
+ scsi_internal_device_block_nowait(sdev)
     ...>
 }
