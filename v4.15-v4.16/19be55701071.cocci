//# pattern-1, witnesses: 26
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- ttm_bo_validate(E0, &E1->placement, E2, E3)
+ ttm_bo_validate(E0, &E1->placement, &ctx)
