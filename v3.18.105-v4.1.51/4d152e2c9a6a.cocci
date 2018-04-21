//# pattern-1, witnesses: 3
@@
@@
- rqstp->rq_secure
+ test_bit(RQ_SECURE, &rqstp->rq_flags)
