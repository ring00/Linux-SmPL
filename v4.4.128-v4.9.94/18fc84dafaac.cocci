//# pattern-2, witnesses: 3
@@
expression E0;
expression E1;
@@
- !E0->i_op->rename && !E1->i_op->rename2
+ !E1->i_op->rename2
