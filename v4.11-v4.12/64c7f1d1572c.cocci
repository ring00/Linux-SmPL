//# pattern-2, witnesses: 5
@@
@@
- rq->retries
+ req->retries
//# pattern-3, witnesses: 4
@@
@@
- req->retries
+ rq->retries
//# pattern-1, witnesses: 3
@@
@@
- req->retries
+ scsi_req(req)->retries
