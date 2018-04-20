//# pattern-2, witnesses: 2
@@
identifier bo;
typedef bool;
identifier evict;
identifier interruptible;
identifier mem;
identifier no_wait_gpu;
@@
 int ttm_bo_handle_move_mem(struct ttm_buffer_object * bo, struct ttm_mem_reg * mem, bool evict, bool interruptible, bool no_wait_gpu)
 {
     <...
- bdev->driver->move_notify(bo, mem)
+ bdev->driver->move_notify(bo, evict, mem)
     ...>
 }
//# pattern-3, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0->driver->move_notify(bo, E1)
+ E0->driver->move_notify(bo, false, E1)
