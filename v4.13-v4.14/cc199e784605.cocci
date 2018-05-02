//# pattern-1, witnesses: 5
@@
identifier s;
@@
 struct scsi_host_template s = {
-    .eh_bus_reset_handler = sas_eh_bus_reset_handler,
+    .eh_target_reset_handler = sas_eh_target_reset_handler,
 };
