//# pattern-6, witnesses: 3
@r0@
identifier i, fn;
@@
struct block_device_operations i = {
    .rw_page = fn,
};
@@
identifier bdev;
identifier page;
identifier r0.fn;
identifier rw;
identifier sector;
typedef sector_t;
@@
- int fn(struct block_device * bdev, sector_t sector, struct page * page, int rw)
+ int fn(struct block_device * bdev, sector_t sector, struct page * page, int op)
 {
     <...
- rw & WRITE
+ op
     ...>
 }
//# pattern-2, witnesses: 2
@@
identifier bio;
identifier zram;
@@
 void __zram_make_request(struct zram * zram, struct bio * bio)
 {
     <...
- int offset = offset;
- rw = bio_data_dir(bio);
+ int offset = offset;
     ...>
 }
//# pattern-11, witnesses: 2
@r1@
identifier i, fn;
@@
struct block_device_operations i = {
    .rw_page = fn,
};
@@
expression F0;
expression V1;
identifier bdev;
identifier op;
identifier page;
identifier r1.fn;
identifier sector;
typedef sector_t;
@@
 int fn(struct block_device * bdev, sector_t sector, struct page * page, int op)
 {
     <...
- F0(V1, page, PAGE_SIZE, 0, rw, sector)
+ F0(V1, page, PAGE_SIZE, 0, op, sector)
     ...>
 }
//# pattern-14, witnesses: 2
@@
@@
- bio_data_dir(bio)
+ bio_op(bio)
