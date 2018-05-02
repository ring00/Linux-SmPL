//# pattern-11, witnesses: 11
@@
expression list listE0;
@@
- scsi_adjust_queue_depth(listE0)
+ scsi_change_queue_depth(listE0)
//# pattern-1, witnesses: 4
@@
expression F1;
identifier s;
@@
 struct scsi_host_template s = {
-    .change_queue_depth = F1,
+    .change_queue_depth = scsi_change_queue_depth,
 };
//# pattern-5, witnesses: 3
@@
expression E0;
identifier fn;
identifier qdepth;
identifier reason;
identifier sdev;
@@
- int fn(struct scsi_device * sdev, int qdepth, int reason)
+ int fn(struct scsi_device * sdev, int qdepth)
 {
     <...
- return E0;
+ return scsi_change_queue_depth(sdev, qdepth);
     ...>
 }
//# pattern-6, witnesses: 3
@@
identifier fn;
identifier qdepth;
identifier sdev;
@@
 int fn(struct scsi_device * sdev, int qdepth)
 {
     <...
- scsi_adjust_queue_depth(sdev, qdepth);
     ...>
 }
//# pattern-7, witnesses: 2
@@
identifier fn;
identifier qdepth;
identifier sdev;
@@
 int fn(struct scsi_device * sdev, int qdepth)
 {
     <...
- if (reason != SCSI_QDEPTH_DEFAULT) {
- return -EOPNOTSUPP;
- }
     ...>
 }
