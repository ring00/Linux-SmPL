//# pattern-4, witnesses: 10
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
@@
- ttm_bo_mem_space(E0, E1, &E2, E3, E4)
+ ttm_bo_mem_space(E0, E1, &E2, &ctx)
