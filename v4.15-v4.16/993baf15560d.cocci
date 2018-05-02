//# pattern-4, witnesses: 3
@@
expression E0;
expression E1;
@@
- ttm_tt_bind(E0, E1)
+ ttm_tt_bind(E0, E1, ctx)
//# pattern-1, witnesses: 2
@@
expression V0;
identifier bo;
typedef bool;
identifier evict;
identifier fn;
identifier intr;
identifier new_reg;
identifier no_wait_gpu;
@@
 int fn(struct ttm_buffer_object * bo, bool evict, bool intr, bool no_wait_gpu, struct ttm_mem_reg * new_reg)
 {
     <...
- ttm_tt_bind(bo->ttm, &V0)
+ ttm_tt_bind(bo->ttm, &V0, &ctx)
     ...>
 }
