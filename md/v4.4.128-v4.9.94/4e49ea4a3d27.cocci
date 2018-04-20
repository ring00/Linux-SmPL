//# pattern-10, witnesses: 6
@@
expression E0;
expression E1;
@@
- submit_bio(E0, E1)
+ submit_bio(E1)
//# pattern-12, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier bio;
typedef blk_qc_t;
identifier rw;
@@
- blk_qc_t submit_bio(int rw, struct bio * bio)
+ blk_qc_t submit_bio(struct bio * bio)
 {
     <...
- rw & WRITE
+ bio->bi_rw & WRITE
     ...>
 }
//# pattern-21, witnesses: 2
@@
expression E0;
@@
- submit_bio_wait(E0, bio)
+ submit_bio_wait(bio)
