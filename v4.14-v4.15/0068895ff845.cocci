//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- atomic_dec_and_test(listE0)
+ refcount_dec_and_test(listE0)
