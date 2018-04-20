unknown kind: WhileStmt
unknown kind: WhileStmt
//# pattern-33, witnesses: 15
@@
expression E0;
expression E1;
@@
- bio_endio(E0, E1)
+ bio_endio(E0)
//# pattern-62, witnesses: 10
@@
@@
- bio_endio(bio, -EIO)
+ bio_io_error(bio)
//# pattern-30, witnesses: 6
@@
expression E0;
@@
- clear_bit(BIO_UPTODATE, &E0->bi_flags);
+ E0->bi_error = -EIO;
//# pattern-13, witnesses: 3
@@
@@
- bb.flags = 1 << BIO_UPTODATE
+ bb.error = 0
//# pattern-22, witnesses: 3
@@
@@
- set_bit(BIO_UPTODATE, &bio->bi_flags);
//# pattern-35, witnesses: 3
@@
expression list listE0;
@@
- bio_io_error(bio)
+ bio_io_error(listE0)
//# pattern-38, witnesses: 2
@@
expression IL0;
@@
- if (!test_bit(BIO_UPTODATE, &bb.flags)) {
- ret = -IL0;
- }
+ if (bb.error) {
+ return bb.error;
+ }
//# pattern-105, witnesses: 2
@@
expression E0;
@@
- test_bit(BIO_UPTODATE, &E0->bi_flags)
+ !E0->bi_error
