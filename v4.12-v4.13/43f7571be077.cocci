//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- scsi_internal_device_unblock(listE0)
+ scsi_internal_device_unblock_nowait(listE0)
