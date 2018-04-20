//# pattern-5, witnesses: 3
@@
@@
- int put_count = put_count;
- put_count = ttm_bo_del_from_lru(bo);
- ttm_bo_list_ref_sub(bo, put_count, true);
+ ttm_bo_del_from_lru(bo);
//# pattern-7, witnesses: 2
@r0@
identifier fn;
expression P0, P2;
@@
ttm_bo_list_ref_sub(P0, fn, P2)
@@
expression ME0;
identifier bo;
@@
- int ttm_bo_del_from_lru(struct ttm_buffer_object * bo)
+ void ttm_bo_del_from_lru(struct ttm_buffer_object * bo)
 {
     <...
- int put_count = 0;
- if (!list_empty(&ME0)) {
- ++ _put_count;
- }
+ if (!list_empty(&ME0)) {
+ kref_put(&bo->list_kref, ttm_bo_ref_bug);
+ }
     ...>
 }
