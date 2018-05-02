//# pattern-2, witnesses: 9
@@
expression E0;
expression E1;
@@
- bio->bi_opf & E0 | E1
+ op_is_flush(bio->bi_opf)
//# pattern-6, witnesses: 2
@@
statement S0;
@@
- if (rq->cmd_flags & REQ_PREFLUSH | REQ_FUA) { S0 }
+ if (op_is_flush(rq->cmd_flags)) { S0 }
