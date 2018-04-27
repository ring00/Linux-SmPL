//# pattern-1, witnesses: 7
@@
expression E0;
@@
- E0->trans_start
+ dev_trans_start(E0)
//# pattern-2, witnesses: 3
@@
expression E0;
expression E1;
@@
- E0->trans_start + E1
+ dev_trans_start(E0) + E1
