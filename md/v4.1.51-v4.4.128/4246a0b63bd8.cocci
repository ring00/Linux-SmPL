//# pattern-25, witnesses: 7
@@
@@
- bio_endio(bio, -EIO)
+ bio_io_error(bio)
//# pattern-10, witnesses: 5
@@
expression E0;
@@
- clear_bit(BIO_UPTODATE, &E0->bi_flags);
+ E0->bi_error = -EIO;
//# pattern-4, witnesses: 3
@@
@@
- bb.flags = 1 << BIO_UPTODATE
+ bb.error = 0
//# pattern-13, witnesses: 2
@@
expression IL0;
@@
- if (!test_bit(BIO_UPTODATE, &bb.flags)) {
- ret = -IL0;
- }
+ if (bb.error) {
+ return bb.error;
+ }
//# pattern-23, witnesses: 2
@@
expression E0;
@@
- bio_endio(bio, E0)
+ bio_endio(bio)
