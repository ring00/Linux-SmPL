//# pattern-12, witnesses: 82
@@
expression E0;
@@
- E0->bi_error
+ E0->bi_status
//# pattern-19, witnesses: 12
@@
expression E0;
@@
- E0->error
+ E0->status
//# pattern-25, witnesses: 8
@@
expression E0;
@@
- E0->bi_error = -EIO
+ E0->bi_status = BLK_STS_IOERR
//# pattern-21, witnesses: 6
@@
@@
- -EIO
+ BLK_STS_IOERR
//# pattern-5, witnesses: 5
@@
identifier bio;
identifier fn;
@@
 void fn(struct bio * bio)
 {
     <...
- bio->bi_error
+ blk_status_to_errno(bio->bi_status)
     ...>
 }
//# pattern-24, witnesses: 3
@@
expression E0;
expression E1;
@@
- E0->bi_error = E1
+ E0->bi_status = errno_to_blk_status(E1)
//# pattern-9, witnesses: 2
@@
expression ME0;
@@
- ME0.error = -EINTR
+ ME0.status = BLK_STS_IOERR
//# pattern-10, witnesses: 2
@r0@
identifier i, fn;
@@
struct target_type i = {
    .end_io = fn,
};
@@
identifier bio;
identifier error;
identifier r0.fn;
identifier ti;
@@
- int fn(struct dm_target * ti, struct bio * bio, int * error)
+ int fn(struct dm_target * ti, struct bio * bio, blk_status_t * error)
 { ... }
//# pattern-17, witnesses: 2
@@
expression E0;
@@
- E0 = -ENOMEM
+ E0 = BLK_STS_RESOURCE
//# pattern-23, witnesses: 2
@@
@@
- st = -EFAULT;
