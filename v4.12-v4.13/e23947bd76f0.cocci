//# pattern-2, witnesses: 2
@r0@
identifier fn;
expression P0;
@@
blk_queue_make_request(P0, fn)
@@
statement S0;
identifier bio;
typedef blk_qc_t;
identifier q;
identifier r0.fn;
@@
 blk_qc_t fn(struct request_queue * q, struct bio * bio)
 {
     <...
- if (bio_integrity_enabled(bio) && bio_integrity_prep(bio)) { S0 }
+ if (!bio_integrity_prep(bio)) { S0 }
     ...>
 }
