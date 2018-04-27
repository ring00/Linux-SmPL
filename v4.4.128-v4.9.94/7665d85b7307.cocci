//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
@@
- E0->r_reply_op_len[E1] = E2
+ E0->r_ops[E1].outdata_len = E2
