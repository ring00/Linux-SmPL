//# pattern-11, witnesses: 8
@@
expression E0;
@@
- E0->bi_rw & REQ_DISCARD
+ bio_op(E0) == REQ_OP_DISCARD
//# pattern-9, witnesses: 3
@@
@@
- bio->bi_rw & REQ_WRITE_SAME
+ bio_op == REQ_OP_WRITE_SAME
//# pattern-38, witnesses: 3
@@
@@
- bio->bi_rw = WRITE;
+ bio_set_op_attrs(bio, REQ_OP_WRITE, 0);
//# pattern-5, witnesses: 2
@@
identifier s;
@@
 struct dm_io_request s = {
+    .bi_op = REQ_OP_WRITE,
 };
//# pattern-12, witnesses: 2
@@
expression E1;
expression IL2;
expression ME0;
@@
- chunk_io(ps, ME0, E1, WRITE, IL2)
+ chunk_io(ps, ME0, E1, REQ_OP_WRITE, 0, IL2)
//# pattern-14, witnesses: 2
@@
@@
- unlikely(bio->bi_rw & REQ_DISCARD)
+ unlikely(bio_op == REQ_OP_DISCARD)
//# pattern-15, witnesses: 2
@@
identifier s;
@@
 struct dm_io_request s = {
+    .bi_op_flags = 0,
 };
//# pattern-26, witnesses: 2
@@
@@
- bio->bi_rw & REQ_DISCARD | REQ_FLUSH | REQ_FUA
+ bio->bi_rw & REQ_FLUSH | REQ_FUA || bio_op(bio) == REQ_OP_DISCARD
//# pattern-41, witnesses: 2
@@
@@
- area_io(ps, WRITE_FLUSH_FUA)
+ area_io(ps, REQ_OP_WRITE, WRITE_FLUSH_FUA)
