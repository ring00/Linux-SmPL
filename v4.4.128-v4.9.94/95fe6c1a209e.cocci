//# pattern-2, witnesses: 7
@@
@@
- bio->bi_rw & REQ_DISCARD
+ bio_op(bio) == REQ_OP_DISCARD
//# pattern-11, witnesses: 7
@@
@@
- bio->bi_rw |= REQ_WRITE;
+ bio_set_op_attrs(bio, REQ_OP_WRITE, 0);
//# pattern-6, witnesses: 4
@@
@@
- bio->bi_rw & REQ_WRITE_SAME
+ bio_op(bio) == REQ_OP_WRITE_SAME
//# pattern-9, witnesses: 3
@@
expression E0;
expression E1;
@@
- E0->bi_rw = E1;
+ bio_set_op_attrs(E0, REQ_OP_WRITE, 0);
//# pattern-5, witnesses: 2
@@
@@
- unlikely(bio->bi_rw & REQ_DISCARD)
+ unlikely(bio_op == REQ_OP_DISCARD)
//# pattern-7, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0 = E1->bi_rw
+ E0 = bio_data_dir(E1)
