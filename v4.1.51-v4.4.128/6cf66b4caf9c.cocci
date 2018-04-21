//# pattern-2, witnesses: 2
@@
expression E1;
expression E2;
expression E3;
expression E4;
expression ME0;
@@
- bio->bi_io_vec[0].bv_page = ME0;
- bio->bi_io_vec[E1].bv_len = E2;
- bio->bi_io_vec[0].bv_offset = E3;
- bio->bi_vcnt = 1;
- bio->bi_iter.bi_size = E4;
+ bio_add_page(bio, ME0, E4, E3);
+ BUG_ON(bio->bi_iter.bi_size != E2);
