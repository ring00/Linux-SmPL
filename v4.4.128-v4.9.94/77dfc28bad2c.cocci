//# pattern-1, witnesses: 5
@@
identifier PV0;
@@
- ttm_bo_move_memcpy(bo, evict, no_wait_gpu, PV0)
+ ttm_bo_move_memcpy(bo, evict, interruptible, no_wait_gpu, PV0)
