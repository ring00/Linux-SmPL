//# pattern-4, witnesses: 2
@@
expression E0;
expression E1;
@@
- ib_ud_header_init(E0, 1, 0, 0, E1, 0, &sqp->ud_header)
+ ib_ud_header_init(E0, 1, 0, 0, E1, 0, 0, 0, &sqp->ud_header)
