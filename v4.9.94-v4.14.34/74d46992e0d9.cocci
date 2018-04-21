//# pattern-5, witnesses: 16
@@
expression E0;
expression E1;
@@
- E0->bi_bdev = E1;
+ bio_set_dev(E0, E1);
//# pattern-16, witnesses: 6
@@
expression E0;
@@
- E0->bi_bdev
+ E0->bi_disk
//# pattern-4, witnesses: 4
@@
@@
- bdev_get_queue(bio->bi_bdev)
+ bio->bi_disk->queue
//# pattern-8, witnesses: 4
@@
@@
- bdev_get_integrity(bio->bi_bdev)
+ blk_get_integrity(bio->bi_disk)
//# pattern-9, witnesses: 2
@@
@@
- bio->bi_bdev->bd_disk
+ bio->bi_disk
//# pattern-20, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression V0;
identifier bio;
typedef bool;
@@
 bool bio_integrity_prep(struct bio * bio)
 {
     <...
- V0 = bio->bi_bdev;
     ...>
 }
