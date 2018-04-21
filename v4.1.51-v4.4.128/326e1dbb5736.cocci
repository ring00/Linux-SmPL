//# pattern-1, witnesses: 5
@@
expression E0;
@@
- bio_inc_remaining(E0);
//# pattern-6, witnesses: 5
@@
expression list listE0;
@@
- bio_endio_nodec(listE0)
+ bio_endio(listE0)
//# pattern-3, witnesses: 2
@@
@@
- bio->bi_end_io = bbio->end_io;
//# pattern-4, witnesses: 2
@@
@@
- bio->bi_private = bbio->private;
