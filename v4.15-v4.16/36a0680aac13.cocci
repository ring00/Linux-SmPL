//# pattern-2, witnesses: 9
@@
@@
- __ttm_bo_unreserve(bo)
+ reservation_object_unlock(bo->resv)
