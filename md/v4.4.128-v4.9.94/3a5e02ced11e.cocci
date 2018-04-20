//# pattern-4, witnesses: 3
@@
statement S0;
@@
- if (req->cmd_flags & REQ_FLUSH) { S0 }
+ if (req_op(req) == REQ_OP_FLUSH) { S0 }
//# pattern-6, witnesses: 2
@@
@@
- req->cmd_flags & REQ_FLUSH
+ req_op(req) == REQ_OP_FLUSH
