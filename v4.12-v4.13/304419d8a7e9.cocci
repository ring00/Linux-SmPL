//# pattern-1, witnesses: 4
@@
expression E0;
@@
- mmc_queue_req_free(mq, E0);
+ _ --mq->qcnt;
