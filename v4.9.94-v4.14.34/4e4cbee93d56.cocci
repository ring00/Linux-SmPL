//# pattern-7, witnesses: 26
@@
expression E0;
@@
- E0->bi_error
+ E0->bi_status
//# pattern-8, witnesses: 7
@@
expression E0;
@@
- E0->bi_error = -EIO
+ E0->bi_status = BLK_STS_IOERR
//# pattern-4, witnesses: 5
@@
identifier bio;
identifier fn;
@@
 void fn(struct bio * bio)
 {
     <...
- bio->bi_error
+ blk_status_to_errno(bio->bi_status)
     ...>
 }
