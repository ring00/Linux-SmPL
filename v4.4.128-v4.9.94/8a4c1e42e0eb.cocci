//# pattern-4, witnesses: 5
@@
@@
- dio->rw & WRITE
+ dio->op == REQ_OP_WRITE
//# pattern-5, witnesses: 4
@@
@@
- dio->rw == READ
+ dio->op == REQ_OP_READ
