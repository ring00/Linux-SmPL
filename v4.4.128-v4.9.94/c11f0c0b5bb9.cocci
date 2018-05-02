//# pattern-4, witnesses: 7
@@
@@
- bio_op(bio)
+ op_is_write(bio_op(bio))
//# pattern-2, witnesses: 4
@r0@
identifier i, fn;
@@
struct block_device_operations i = {
    .rw_page = fn,
};
@@
expression E0;
identifier bdev;
typedef bool;
identifier op;
identifier page;
identifier r0.fn;
identifier sector;
typedef sector_t;
@@
- int fn(struct block_device * bdev, sector_t sector, struct page * page, int op)
+ int fn(struct block_device * bdev, sector_t sector, struct page * page, bool is_write)
 {
     <...
- page_endio(page, op, E0)
+ page_endio(page, is_write, E0)
     ...>
 }
