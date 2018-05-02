//# pattern-2, witnesses: 4
@@
identifier fn;
identifier sdev;
@@
 struct clariion_dh_data * fn(struct scsi_device * sdev)
 {
     <...
- struct scsi_dh_data * scsi_dh_data = sdev->scsi_dh_data;
- return scsi_dh_data->buf;
+ return container_of(sdev->scsi_dh_data, );
     ...>
 }
//# pattern-3, witnesses: 4
@@
identifier fn;
identifier sdev;
@@
 struct clariion_dh_data * fn(struct scsi_device * sdev)
 {
     <...
- struct scsi_dh_data * scsi_dh_data = sdev->scsi_dh_data;
- BUG_ON(scsi_dh_data == NULL);
     ...>
 }
