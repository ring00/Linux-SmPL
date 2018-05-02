//# pattern-1, witnesses: 10
@@
expression F1;
identifier s;
@@
 struct scsi_host_template s = {
-    .change_queue_type = F1,
+    .change_queue_type = scsi_change_queue_type,
 };
