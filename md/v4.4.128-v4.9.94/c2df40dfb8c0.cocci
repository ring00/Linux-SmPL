//# pattern-3, witnesses: 8
@@
expression E0;
@@
- E0->cmd_flags & REQ_DISCARD
+ req_op(E0) == REQ_OP_DISCARD
