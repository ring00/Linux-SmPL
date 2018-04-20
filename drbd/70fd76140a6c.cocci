//# pattern-1, witnesses: 24
@@
@@
- WRITE_SYNC
+ REQ_SYNC
//# pattern-9, witnesses: 9
@@
expression EC1;
expression V0;
@@
- bio_set_op_attrs(V0, EC1, WRITE_FLUSH);
+ V0->bi_opf = EC1 | REQ_PREFLUSH;
//# pattern-14, witnesses: 7
@@
@@
- WRITE_FLUSH
+ REQ_PREFLUSH
//# pattern-20, witnesses: 6
@@
@@
- WRITE_FUA
+ REQ_FUA
//# pattern-8, witnesses: 5
@@
@@
- READ_SYNC | REQ_META
+ REQ_META
//# pattern-7, witnesses: 4
@@
@@
- WRITE_FLUSH_FUA
+ REQ_PREFLUSH | REQ_FUA
//# pattern-3, witnesses: 3
@@
expression E0;
@@
- E0 = WRITE_ODIRECT
+ E0 = REQ_SYNC | REQ_IDLE
//# pattern-13, witnesses: 3
@@
expression E2;
expression EC1;
expression V0;
@@
- bio_set_op_attrs(V0, EC1, E2);
+ V0->bi_opf = EC1;
//# pattern-2, witnesses: 2
@@
expression E0;
@@
- bio_set_op_attrs(&E0->flush_bio, REQ_OP_WRITE, WRITE_FLUSH);
+ E0->flush_bio.bi_opf = REQ_OP_WRITE | REQ_PREFLUSH;
//# pattern-4, witnesses: 2
@@
@@
- bio_set_op_attrs(bio, REQ_OP_WRITE, WRITE_SYNC);
+ bio->bi_opf = REQ_OP_WRITE | REQ_SYNC;
//# pattern-10, witnesses: 2
@@
expression BO0;
expression E1;
expression E2;
@@
- if (BO0) {
- read_mode = READ_SYNC | REQ_FAILFAST_DEV;
- }
+ if (E1 BO0 E2) {
+ read_mode |= REQ_FAILFAST_DEV;
+ }
//# pattern-18, witnesses: 2
@@
@@
- bio_set_op_attrs(bio, REQ_OP_READ);
+ bio->bi_opf = REQ_OP_READ | REQ_META;
