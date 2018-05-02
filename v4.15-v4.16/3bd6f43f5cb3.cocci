//# pattern-3, witnesses: 2
@@
@@
- atomic_dec(&shost->host_busy)
+ scsi_dec_host_busy(shost)
