//# pattern-1, witnesses: 5
@r0@
identifier i, fn;
@@
struct ttm_bo_driver i = {
    .move = fn,
};
@@
identifier bo;
typedef bool;
identifier evict;
identifier interruptible;
identifier new_mem;
identifier no_wait_gpu;
identifier r0.fn;
@@
- int fn(struct ttm_buffer_object * bo, bool evict, bool interruptible, bool no_wait_gpu, struct ttm_mem_reg * new_mem)
+ int fn(struct ttm_buffer_object * bo, bool evict, struct ttm_operation_ctx * ctx, struct ttm_mem_reg * new_mem)
 {
     <...
- ttm_bo_wait(bo, interruptible, no_wait_gpu)
+ ttm_bo_wait(bo, ctx->interruptible, ctx->no_wait_gpu)
     ...>
 }
//# pattern-2, witnesses: 4
@r1@
identifier i, fn;
@@
struct ttm_bo_driver i = {
    .move = fn,
};
@@
identifier bo;
typedef bool;
identifier ctx;
identifier evict;
identifier new_reg;
identifier r1.fn;
@@
 int fn(struct ttm_buffer_object * bo, bool evict, struct ttm_operation_ctx * ctx, struct ttm_mem_reg * new_reg)
 {
     <...
- ttm_bo_move_memcpy(bo, intr, no_wait_gpu, new_reg)
+ ttm_bo_move_memcpy(bo, ctx->interruptible, ctx->no_wait_gpu, new_reg)
     ...>
 }
