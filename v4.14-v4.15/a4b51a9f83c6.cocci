//# pattern-2, witnesses: 4
@@
expression list listE0;
@@
- atomic_dec_and_test(listE0)
+ refcount_dec_and_test(listE0)
//# pattern-3, witnesses: 3
@@
expression list listE0;
@@
- atomic_inc(listE0)
+ refcount_inc(listE0)
