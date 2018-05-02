//# pattern-3, witnesses: 7
@@
@@
- WRITE_FLUSH
+ REQ_PREFLUSH
//# pattern-2, witnesses: 6
@@
expression E2;
expression EC1;
expression V0;
@@
- bio_set_op_attrs(V0, EC1, E2);
+ V0->bi_opf = EC1;
//# pattern-1, witnesses: 2
@@
expression E0;
@@
- bio_set_op_attrs(&E0->flush_bio, REQ_OP_WRITE, WRITE_FLUSH);
+ E0->flush_bio.bi_opf = REQ_OP_WRITE | REQ_PREFLUSH;
//# pattern-5, witnesses: 2
@@
@@
- WRITE_FLUSH_FUA
+ REQ_PREFLUSH | REQ_FUA
//# pattern-8, witnesses: 2
@@
@@
- bio_set_op_attrs(bio, REQ_OP_READ);
+ bio->bi_opf = REQ_OP_READ | REQ_META;
//# pattern-9, witnesses: 2
@@
@@
- WRITE_FUA
+ REQ_FUA
