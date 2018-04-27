//# pattern-3, witnesses: 3
@@
expression E0;
expression E1;
@@
- E0 && E1->rq_splice_ok
+ E0 && test_bit(RQ_SPLICE_OK, &E1->rq_flags)
//# pattern-4, witnesses: 3
@@
expression E0;
@@
- E0->rq_splice_ok = false;
+ clear_bit(RQ_SPLICE_OK, &E0->rq_flags);
