//# pattern-12, witnesses: 6
@r0@
identifier i, fn;
@@
struct ttm_bo_driver i = {
    .ttm_tt_populate = fn,
};
@@
identifier r0.fn;
identifier ttm;
@@
- int fn(struct ttm_tt * ttm)
+ int fn(struct ttm_tt * ttm, struct ttm_operation_ctx * ctx)
 {
     <...
- ttm_pool_populate(ttm)
+ ttm_pool_populate(ttm, ctx)
     ...>
 }
//# pattern-4, witnesses: 3
@r1@
identifier i, fn;
@@
struct ttm_bo_driver i = {
    .ttm_tt_populate = fn,
};
@@
expression E0;
expression E1;
identifier ctx;
identifier r1.fn;
identifier ttm;
@@
 int fn(struct ttm_tt * ttm, struct ttm_operation_ctx * ctx)
 {
     <...
- ttm_dma_populate(E0, E1)
+ ttm_dma_populate(E0, E1, ctx)
     ...>
 }
//# pattern-2, witnesses: 2
@r2@
identifier i, fn;
@@
struct ttm_bo_driver i = {
    .ttm_tt_populate = fn,
};
@@
identifier ctx;
identifier r2.fn;
identifier ttm;
@@
 int fn(struct ttm_tt * ttm, struct ttm_operation_ctx * ctx)
 {
     <...
- ttm_agp_tt_populate(ttm)
+ ttm_agp_tt_populate(ttm, ctx)
     ...>
 }
//# pattern-6, witnesses: 2
@@
@@
- ttm->bdev->driver->ttm_tt_populate(ttm)
+ ttm->bdev->driver->ttm_tt_populate(ttm, &ctx)
//# pattern-11, witnesses: 2
@r3@
identifier i, fn;
@@
struct ttm_bo_driver i = {
    .ttm_tt_populate = fn,
};
@@
expression V0;
identifier ctx;
identifier r3.fn;
identifier ttm;
@@
 int fn(struct ttm_tt * ttm, struct ttm_operation_ctx * ctx)
 {
     <...
- ttm_populate_and_map_pages(V0->dev, &gtt->ttm)
+ ttm_populate_and_map_pages(V0->dev, &gtt->ttm, ctx)
     ...>
 }
