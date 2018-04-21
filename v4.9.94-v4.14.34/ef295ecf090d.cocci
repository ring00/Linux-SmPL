//# pattern-7, witnesses: 2
@r0@
identifier fn;
expression P0;
@@
blk_queue_make_request(P0, fn)
@@
identifier bio;
typedef blk_qc_t;
identifier q;
identifier r0.fn;
@@
 blk_qc_t fn(struct request_queue * q, struct bio * bio)
 {
     <...
- rw_is_sync(bio_op(bio), bio->bi_opf)
+ op_is_sync(bio->bi_opf)
     ...>
 }
//# pattern-27, witnesses: 2
@@
@@
- __blk_mq_alloc_request(&alloc_data, rw, 0)
+ __blk_mq_alloc_request(&alloc_data, rw)
