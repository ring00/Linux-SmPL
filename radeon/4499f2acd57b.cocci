//# pattern-1, witnesses: 5
@@
identifier PV0;
identifier PV1;
@@
- ttm_bo_move_memcpy(bo, evict, PV0, no_wait_gpu, PV1)
+ ttm_bo_move_memcpy(bo, PV0, no_wait_gpu, PV1)
