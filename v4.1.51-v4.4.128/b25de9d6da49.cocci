//# pattern-1, witnesses: 4
@@
expression E0;
expression E1;
expression E2;
@@
- if (E0E1) {
- set_bit(BIO_EOPNOTSUPP, &E2->bi_flags);
- }
//# pattern-4, witnesses: 3
@@
@@
- if (bio_flagged(bio, BIO_EOPNOTSUPP)) {
- }
//# pattern-5, witnesses: 2
@@
@@
- bio_put(bio);
//# pattern-6, witnesses: 2
@@
@@
- bio_get(bio);
