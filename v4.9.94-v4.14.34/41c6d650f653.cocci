//# pattern-5, witnesses: 9
@@
expression list listE0;
@@
- atomic_read(listE0)
+ refcount_read(listE0)
//# pattern-1, witnesses: 7
@@
expression list listE0;
@@
- atomic_set(listE0)
+ refcount_set(listE0)
//# pattern-7, witnesses: 3
@@
expression list listE0;
@@
- atomic_inc_not_zero(&sk->__sk_common.skc_refcnt)
+ refcount_inc_not_zero(listE0)
//# pattern-4, witnesses: 2
@@
expression list listE0;
@@
- atomic_dec_and_test(listE0)
+ refcount_dec_and_test(listE0)
