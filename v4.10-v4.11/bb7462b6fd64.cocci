//# pattern-2, witnesses: 6
@@
expression E0;
expression E1;
expression E2;
@@
- E0->f_op->read_iter(E1, E2)
+ call_read_iter(E0, E1, E2)
//# pattern-1, witnesses: 5
@@
expression E0;
expression E1;
expression E2;
@@
- E0->f_op->write_iter(E1, E2)
+ call_write_iter(E0, E1, E2)
