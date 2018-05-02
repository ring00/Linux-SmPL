//# pattern-2, witnesses: 12
@@
identifier s;
@@
 struct scsi_host_template s = {
+    .track_queue_depth = 1,
 };
