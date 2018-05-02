//# pattern-1, witnesses: 6
@@
@@
- bio->bi_io_vec[0].bv_page
+ bio_first_page_all(bio)
//# pattern-2, witnesses: 2
@@
@@
- bio->bi_io_vec->bv_page
+ bio_first_page_all(bio)
//# pattern-3, witnesses: 2
@r0@
identifier fn;
expression P0, P1, P2, P3;
@@
dio_read_error(P0, P1, P2, P3)
@@
identifier bio;
identifier r0.fn;
@@
 void fn(struct bio * bio)
 {
     <...
- bio->bi_io_vec
+ bio_first_bvec_all(bio)
     ...>
 }
//# pattern-5, witnesses: 2
@@
expression E1;
identifier PV0;
@@
- PV0->sb_bio.bi_io_vec[0].bv_page = E1
+ bio_first_bvec_all(&PV0->sb_bio)->bv_page = E1
