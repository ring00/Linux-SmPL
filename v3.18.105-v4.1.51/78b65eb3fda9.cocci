//# pattern-1, witnesses: 2
@@
@@
- rqstp->rq_dropme
+ test_bit(RQ_DROPME, &rqstp->rq_flags)
