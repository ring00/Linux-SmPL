//# pattern-26, witnesses: 13
@@
expression E0;
expression E1;
@@
- submit_bio(E0, E1)
+ submit_bio(E1)
//# pattern-9, witnesses: 6
@@
expression E1;
expression V0;
@@
- V0 = submit_bio_wait(E1, bio);
+ bio->bi_rw = E1;
+ V0 = submit_bio_wait(bio);
//# pattern-25, witnesses: 5
@@
expression E0;
expression E1;
@@
- btrfsic_submit_bio(E0, E1)
+ btrfsic_submit_bio(E1)
//# pattern-23, witnesses: 4
@@
expression E0;
expression V1;
@@
- submit_bio_wait(E0, V1)
+ submit_bio_wait(V1)
//# pattern-38, witnesses: 3
@@
@@
+ bio->bi_rw = WRITE;
//# pattern-5, witnesses: 2
@r0@
identifier i, fn;
@@
struct sbc_ops i = {
    .execute_rw = fn,
};
@@
expression E0;
identifier cmd;
identifier data_direction;
typedef sense_reason_t;
identifier sgl;
identifier sgl_nents;
typedef u32;
@@
 sense_reason_t iblock_execute_rw(struct se_cmd * cmd, struct scatterlist * sgl, u32 sgl_nents, enum dma_data_direction data_direction)
 {
     <...
- iblock_get_bio(cmd, block_lba, E0)
+ iblock_get_bio(cmd, block_lba, E0, rw)
     ...>
 }
//# pattern-28, witnesses: 2
@@
@@
- iblock_submit_bios(&list, rw)
+ iblock_submit_bios(&list)
//# pattern-32, witnesses: 2
@@
@@
+ bio->bi_rw = WRITE_FLUSH;
//# pattern-37, witnesses: 2
@r1@
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
