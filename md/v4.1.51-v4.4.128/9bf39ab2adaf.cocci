//# pattern-1, witnesses: 10
@@
expression E0;
expression E1;
expression E2;
@@
- d_path(&E0->f_path, E1, E2)
+ file_path(E0, E1, E2)
