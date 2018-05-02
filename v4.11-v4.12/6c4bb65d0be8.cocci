//# pattern-1, witnesses: 5
@@
expression list listE0;
@@
- atomic_read(listE0)
+ refcount_read(listE0)
//# pattern-3, witnesses: 4
@@
expression list listE0;
@@
- atomic_inc(listE0)
+ refcount_inc(listE0)
//# pattern-2, witnesses: 3
@@
@@
- atomic_inc(&buf->refcount)
+ refcount_set(&buf->refcount, 1)
//# pattern-4, witnesses: 3
@@
expression list listE0;
@@
- atomic_dec_and_test(listE0)
+ refcount_dec_and_test(listE0)
