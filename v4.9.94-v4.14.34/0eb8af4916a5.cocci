//# pattern-1, witnesses: 2
@@
expression E0;
expression list listE1;
@@
- E0->f_op->fsync(listE1)
+ call_fsync(listE1)
