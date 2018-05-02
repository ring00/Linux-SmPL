//# pattern-1, witnesses: 2
@@
identifier bo;
identifier fn;
@@
 int fn(struct ttm_buffer_object * bo)
 {
     <...
- struct ttm_bo_device * bdev = bo->bdev;
- if (bdev->driver->lru_removal) {
- bdev->driver->lru_removal(bo);
- }
     ...>
 }
