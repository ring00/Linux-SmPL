//# pattern-1, witnesses: 3
@@
expression list listE0;
@@
- atomic_dec_and_test(listE0)
+ refcount_dec_and_test(listE0)
//# pattern-4, witnesses: 2
@@
expression list listE0;
@@
- atomic_set(listE0)
+ refcount_set(listE0)
