//# pattern-7, witnesses: 5
@@
expression IL0;
@@
- bio->bi_flags |= 1 << IL0;
+ bio_set_flag(bio, IL0);
//# pattern-3, witnesses: 3
@@
expression IL0;
@@
- clear_bit(IL0, &bio->bi_flags)
+ bio_clear_flag(bio, IL0)
//# pattern-1, witnesses: 2
@@
expression V0;
@@
- __clear_bit(BIO_SEG_VALID, &V0->bi_flags)
+ bio_clear_flag(V0, BIO_SEG_VALID)
//# pattern-2, witnesses: 2
@@
expression E0;
expression IL1;
@@
- unlikely(E0)
+ unlikely(bio_flagged(bio, IL1))
//# pattern-8, witnesses: 2
@@
expression IL0;
@@
- !bio_flagged(bio, IL0)
+ !bio_flagged(bio, IL0)
