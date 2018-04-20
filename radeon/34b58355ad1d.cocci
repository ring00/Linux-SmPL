//# pattern-1, witnesses: 6
@@
expression E0;
identifier bo;
typedef bool;
identifier evict;
identifier fn;
identifier intr;
identifier new_mem;
identifier no_wait_gpu;
@@
 int fn(struct ttm_buffer_object * bo, bool evict, bool intr, bool no_wait_gpu, struct ttm_mem_reg * new_mem)
 {
     <...
- ttm_bo_move_ttm(bo, true, no_wait_gpu, E0)
+ ttm_bo_move_ttm(bo, true, intr, no_wait_gpu, E0)
     ...>
 }
