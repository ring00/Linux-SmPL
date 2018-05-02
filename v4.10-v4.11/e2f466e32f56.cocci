//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
@@
- cma_alloc(E0, count, E1)
+ cma_alloc(E0, count, E1, GFP_KERNEL)
