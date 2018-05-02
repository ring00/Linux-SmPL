//# pattern-6, witnesses: 11
@@
expression list listE0;
@@
- atomic_read(listE0)
+ refcount_read(listE0)
//# pattern-2, witnesses: 10
@@
expression list listE0;
@@
- atomic_add(listE0)
+ refcount_add(listE0)
//# pattern-1, witnesses: 6
@@
expression E0;
expression E1;
@@
- atomic_sub(E0, &E1->sk_wmem_alloc);
+ WARN_ON(refcount_sub_and_test(E0, &E1->sk_wmem_alloc));
//# pattern-3, witnesses: 3
@@
@@
- ASSERT(atomic_read(&sk_atm(vcc)->sk_wmem_alloc) >= 0);
//# pattern-5, witnesses: 3
@@
expression list listE0;
@@
- atomic_set(listE0)
+ refcount_set(listE0)
//# pattern-11, witnesses: 2
@@
expression list listE0;
@@
- atomic_sub_and_test(listE0)
+ refcount_sub_and_test(listE0)
