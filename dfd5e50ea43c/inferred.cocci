//# pattern-2, witnesses: 34
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
@@
- ttm_bo_reserve(E0, E1, E2, E3, E4)
+ ttm_bo_reserve(E0, E1, E2, E4)
//# pattern-1, witnesses: 8
@@
expression E0;
expression E1;
expression E2;
expression E4;
expression EC3;
@@
- __ttm_bo_reserve(E0, E1, E2, EC3, E4)
+ __ttm_bo_reserve(E0, E1, E2, E4)
