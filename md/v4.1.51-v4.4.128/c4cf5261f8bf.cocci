//# pattern-1, witnesses: 6
@@
expression E0;
@@
- atomic_inc(&E0->bi_remaining)
+ bio_inc_remaining(E0)
//# pattern-5, witnesses: 2
@@
expression E0;
@@
- E0->bi_remaining
+ E0->__bi_remaining
