//# pattern-9, witnesses: 5
@@
@@
- rq->cmd_type == REQ_TYPE_DRV_PRIV
+ ata_misc_request(rq)
//# pattern-1, witnesses: 3
@@
statement S0;
@@
- if (ata_pm_request(rq)) { S0 }
+ if (ata_pm_request(rq)) { S0 }
//# pattern-15, witnesses: 3
@@
@@
- rq->cmd_type = REQ_TYPE_ATA_TASKFILE;
+ rq->cmd_type = REQ_TYPE_DRV_PRIV;
+ ide_req(rq)->type = ATA_PRIV_TASKFILE;
//# pattern-16, witnesses: 3
@@
@@
- rq->cmd_type == REQ_TYPE_ATA_TASKFILE
+ ata_taskfile_request(rq)
//# pattern-18, witnesses: 3
@@
@@
- rq->cmd_type == REQ_TYPE_ATA_SENSE
+ ata_sense_request(rq)
