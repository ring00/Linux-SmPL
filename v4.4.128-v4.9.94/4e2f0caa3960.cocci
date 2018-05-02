//# pattern-1, witnesses: 7
@@
expression E0;
expression E2;
identifier PV1;
@@
- ttm_bo_move_ttm(bo, E0, PV1, no_wait_gpu, E2)
+ ttm_bo_move_ttm(bo, PV1, no_wait_gpu, E2)
