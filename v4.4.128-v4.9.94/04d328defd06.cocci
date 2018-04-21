//# pattern-15, witnesses: 5
@@
expression E0;
@@
- E0.rw
+ E0.op_flags
//# pattern-2, witnesses: 4
@@
identifier s;
@@
 struct f2fs_io_info s = {
+    .op = REQ_OP_READ,
 };
//# pattern-7, witnesses: 4
@@
identifier s;
@@
 struct f2fs_io_info s = {
+    .op = REQ_OP_WRITE,
 };
//# pattern-18, witnesses: 3
@@
@@
- __submit_bio(F2FS_I_SB(inode), READ, bio)
+ __submit_bio(F2FS_I_SB(inode), bio)
//# pattern-3, witnesses: 2
@@
@@
- bio->bi_rw = WRITE_FLUSH;
+ bio_set_op_attrs(bio, REQ_OP_WRITE, WRITE_FLUSH);
//# pattern-12, witnesses: 2
@@
@@
- is_read_io(fio->rw)
+ is_read_io(fio->op)
