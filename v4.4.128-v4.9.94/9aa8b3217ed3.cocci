//# pattern-5, witnesses: 4
@@
expression E1;
expression E2;
expression E3;
expression E4;
expression list listE0;
@@
- ib_map_mr_sg(listE0)
+ ib_map_mr_sg(E1, E2->sg, E3, NULL, E4)
