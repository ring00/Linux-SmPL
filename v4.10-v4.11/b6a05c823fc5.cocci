//# pattern-2, witnesses: 7
@@
identifier s;
@@
 struct scsi_host_template s = {
+    .eh_timed_out = fc_eh_timed_out,
 };
//# pattern-1, witnesses: 5
@@
identifier s;
@@
 struct scsi_host_template s = {
+    .eh_timed_out = iscsi_eh_cmd_timed_out,
 };
//# pattern-4, witnesses: 2
@@
expression E0;
expression F1;
@@
- E0->eh_timed_out = F1;
