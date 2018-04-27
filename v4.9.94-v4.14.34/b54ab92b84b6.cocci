//# pattern-3, witnesses: 25
@@
expression list listE0;
@@
- atomic_read(listE0)
+ refcount_read(listE0)
//# pattern-2, witnesses: 5
@@
expression list listE0;
@@
- atomic_set(listE0)
+ refcount_set(listE0)
//# pattern-4, witnesses: 5
@@
expression list listE0;
@@
- atomic_inc(listE0)
+ refcount_inc(listE0)
//# pattern-5, witnesses: 3
@@
expression V0;
expression list listE1;
@@
- atomic_inc_not_zero(&V0->use)
+ refcount_inc_not_zero(listE1)
//# pattern-7, witnesses: 2
@@
expression list listE0;
@@
- atomic_dec_and_test(listE0)
+ refcount_dec_and_test(listE0)
