//# pattern-2, witnesses: 59
@@
expression E0;
expression E1;
@@
- E0->bi_bdev = E1
+ bio_set_dev(E0, E1)
//# pattern-20, witnesses: 11
@@
expression E0;
@@
- E0->bi_bdev
+ E0->bi_disk
//# pattern-5, witnesses: 7
@@
expression E0;
@@
- bdev_get_queue(E0->bi_bdev)
+ E0->bi_disk->queue
//# pattern-7, witnesses: 5
@@
expression E0;
expression E1;
@@
- E0.bi_bdev = E1;
+ bio_set_dev(&E0, E1);
//# pattern-9, witnesses: 4
@@
@@
- bdev_get_integrity(bio->bi_bdev)
+ blk_get_integrity(bio->bi_disk)
//# pattern-10, witnesses: 4
@@
@@
- bio->bi_bdev->bd_disk
+ bio->bi_disk
//# pattern-12, witnesses: 3
@@
expression E0;
expression E1;
@@
- E0->bi_bdev = E1->bi_bdev;
+ bio_copy_dev(E0, E1);
//# pattern-25, witnesses: 2
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
//# pattern-26, witnesses: 2
@r1@
identifier i, fn;
@@
struct target_type i = {
    .end_io = fn,
};
@@
identifier bio;
identifier error;
identifier ti;
@@
 int stripe_end_io(struct dm_target * ti, struct bio * bio, blk_status_t * error)
 {
     <...
- bio->bi_bdev->bd_disk
+ bio_dev
     ...>
 }
