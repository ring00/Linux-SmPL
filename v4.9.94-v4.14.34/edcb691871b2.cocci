//# pattern-1, witnesses: 5
@@
expression list listE0;
@@
- atomic_inc(listE0)
+ refcount_inc(listE0)
//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- atomic_dec(listE0)
+ refcount_dec(listE0)
