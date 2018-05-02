//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0 = __ttm_bo_reserve(E1, false, true, NULL)
+ E0 = 
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- E0 = __ttm_bo_reserve(bo, false, true, NULL)
+ E0 = 
