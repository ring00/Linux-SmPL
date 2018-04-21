//# pattern-1, witnesses: 4
@@
expression E0;
expression E1;
expression E2;
@@
- vfs_iter_read(E0, E1, &E2)
+ vfs_iter_read(E0, E1, &E2, 0)
