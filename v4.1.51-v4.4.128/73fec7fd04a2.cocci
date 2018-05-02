//# pattern-1, witnesses: 3
@@
expression E1;
expression E2;
expression ME0;
@@
- ib_cm_listen(ME0, E1, E2, NULL)
+ ib_cm_listen(ME0, E1, E2)
//# pattern-6, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
@@
- cm_find_listen(E0, E1, E2)
+ cm_find_listen(E0, E1)
