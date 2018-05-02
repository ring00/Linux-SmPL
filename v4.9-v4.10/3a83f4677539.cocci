//# pattern-4, witnesses: 9
@@
expression E0;
expression E1;
@@
- E0->bi_max_vecs = E1;
//# pattern-5, witnesses: 6
@@
expression E0;
expression E1;
expression E2;
@@
- bio_init(E0);
- E1->bi_io_vec = E2;
+ bio_init(E0, E2, 1);
//# pattern-6, witnesses: 5
@@
expression E0;
@@
- bio_init(E0)
+ bio_init(E0, NULL, 0)
//# pattern-2, witnesses: 3
@@
expression E0;
@@
- bio_init(bio);
- bio->bi_max_vecs = E0;
- bio->bi_io_vec = bio->bi_inline_vecs;
+ bio_init(bio, bio->bi_inline_vecs, E0);
