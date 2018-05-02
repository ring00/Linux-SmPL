//# pattern-4, witnesses: 5
@@
identifier PV0;
@@
- ttm_bo_move_memcpy(bo, ctx->interruptible, ctx->no_wait_gpu, PV0)
+ ttm_bo_move_memcpy(bo, ctx, PV0)
//# pattern-3, witnesses: 4
@@
expression E0;
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
- ttm_bo_move_ttm(bo, intr, no_wait_gpu, E0)
+ ttm_bo_move_ttm(bo, &ctx, E0)
     ...>
 }
//# pattern-1, witnesses: 3
@@
expression E0;
@@
- ttm_bo_move_ttm(bo, ctx->interruptible, ctx->no_wait_gpu, E0)
+ ttm_bo_move_ttm(bo, ctx, E0)
//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier bo;
typedef bool;
identifier interruptible;
identifier new_mem;
identifier no_wait_gpu;
identifier r0.fn;
@@
- int fn(struct ttm_buffer_object * bo, bool interruptible, bool no_wait_gpu, struct ttm_mem_reg * new_mem)
+ int fn(struct ttm_buffer_object * bo, struct ttm_operation_ctx * ctx, struct ttm_mem_reg * new_mem)
 {
     <...
- ttm_bo_wait(bo, interruptible, no_wait_gpu)
+ ttm_bo_wait(bo, ctx->interruptible, ctx->no_wait_gpu)
     ...>
 }
