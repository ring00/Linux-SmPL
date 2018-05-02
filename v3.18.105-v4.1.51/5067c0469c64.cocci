//# pattern-1, witnesses: 2
@@
statement S0;
@@
- if (!ap->scsi_host) { S0 }
+ if (ap->flags & ATA_FLAG_SAS_HOST) { S0 }
//# pattern-2, witnesses: 2
@@
expression E1;
identifier s;
@@
 struct ata_port_info s = {
+    .flags = E1 | ATA_FLAG_SAS_HOST,
 };
