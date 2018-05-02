//# pattern-9, witnesses: 3
@@
expression E0;
expression E1;
statement S2;
@@
- if (E0 || pte_file(E1)) { S2 }
+ if (E0) { S2 }
//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0 | VM_NONLINEAR | E1
+ E0 | E1
