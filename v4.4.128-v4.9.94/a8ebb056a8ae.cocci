//# pattern-1, witnesses: 5
@@
expression E0;
@@
- E0->cmd_flags & REQ_WRITE
+ op_is_write(req_op(E0))
//# pattern-3, witnesses: 3
@@
expression E0;
@@
- bio->bi_rw & E0
+ op_is_write(bio_op(bio))
