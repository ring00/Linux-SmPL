//# pattern-7, witnesses: 4
@@
expression E0;
expression E1;
expression E2;
@@
- do_munmap(E0, E1, E2)
+ do_munmap(E0, E1, E2, NULL)
//# pattern-18, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
expression V5;
@@
- do_mmap_pgoff(E0, E1, E2, E3, E4, 0, &V5)
+ do_mmap_pgoff(E0, E1, E2, E3, E4, 0, &V5, NULL)
