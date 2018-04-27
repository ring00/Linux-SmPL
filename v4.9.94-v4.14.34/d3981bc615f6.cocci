//# pattern-3, witnesses: 4
@@
expression list listE0;
@@
- atomic_dec(listE0)
+ refcount_dec(listE0)
//# pattern-2, witnesses: 3
@@
expression list listE0;
@@
- atomic_inc(listE0)
+ refcount_inc(listE0)
