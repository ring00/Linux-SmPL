//# pattern-1, witnesses: 4
@@
expression list listE0;
@@
- atomic_inc(listE0)
+ refcount_inc(listE0)
//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- atomic_read(listE0)
+ refcount_read(listE0)
