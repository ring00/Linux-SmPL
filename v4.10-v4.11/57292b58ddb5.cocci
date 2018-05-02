//# pattern-3, witnesses: 19
@@
expression E0;
expression EC1;
@@
- E0->cmd_type == EC1
+ blk_rq_is_passthrough(E0)
//# pattern-1, witnesses: 11
@@
expression E0;
@@
- E0->cmd_type == REQ_TYPE_FS
+ !blk_rq_is_passthrough(E0)
//# pattern-4, witnesses: 8
@@
expression E0;
expression EC1;
@@
- E0->cmd_type != EC1
+ !blk_rq_is_passthrough(E0)
//# pattern-2, witnesses: 2
@@
@@
- rq->cmd_type != REQ_TYPE_FS
+ blk_rq_is_passthrough(rq)
