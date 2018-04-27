//# pattern-5, witnesses: 11
@@
expression list listE0;
@@
- atomic_inc(listE0)
+ refcount_inc(listE0)
//# pattern-3, witnesses: 6
@@
expression list listE0;
@@
- atomic_set(listE0)
+ refcount_set(listE0)
//# pattern-6, witnesses: 4
@@
expression list listE0;
@@
- atomic_read(listE0)
+ refcount_read(listE0)
//# pattern-4, witnesses: 3
@@
expression list listE0;
@@
- atomic_dec(listE0)
+ refcount_dec(listE0)
//# pattern-1, witnesses: 2
@@
expression list listE0;
@@
- atomic_add(listE0)
+ refcount_add(listE0)
//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
@@
- atomic_sub(E0, &E1->users);
+ WARN_ON(refcount_sub_and_test(E0, &E1->users));
