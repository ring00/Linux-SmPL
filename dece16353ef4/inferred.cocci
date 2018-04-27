//# pattern-4, witnesses: 18
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
- void fn(struct request_queue * q, struct bio * bio)
+ blk_qc_t fn(struct request_queue * q, struct bio * bio)
 {
     <...
- return;
+ return BLK_QC_T_NONE;
     ...>
 }
//# pattern-1, witnesses: 9
@r1@
identifier fn;
expression P0;
@@
blk_queue_make_request(P0, fn)
@@
identifier bio;
typedef blk_qc_t;
identifier q;
identifier r1.fn;
@@
 blk_qc_t fn(struct request_queue * q, struct bio * bio)
 {
     ...
+ return BLK_QC_T_NONE;
 }
//# pattern-3, witnesses: 5
@r2@
identifier fn;
expression P0;
@@
blk_queue_make_request(P0, fn)
@@
identifier bio;
typedef blk_qc_t;
identifier queue;
identifier r2.fn;
@@
 blk_qc_t fn(struct request_queue * queue, struct bio * bio)
 {
     <...
- return;
+ return BLK_QC_T_NONE;
     ...>
 }
//# pattern-6, witnesses: 3
@r3@
identifier i, fn;
@@
struct nvm_tgt_type i = {
    .make_rq = fn,
};
@@
identifier bio;
typedef blk_qc_t;
identifier q;
@@
 blk_qc_t rrpc_make_rq(struct request_queue * q, struct bio * bio)
 {
     <...
- return;
+ return BLK_QC_T_NONE;
     ...>
 }
