//# pattern-4, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
@@
- fscache_operation_init(E0, E1, E2)
+ fscache_operation_init(E0, E1, E2, NULL)
//# pattern-10, witnesses: 3
@@
expression V0;
expression V1;
@@
- fscache_wait_for_operation_activation(object, &op->op, __fscache_stat(&V0), __fscache_stat(&V1), fscache_do_cancel_retrieval)
+ fscache_wait_for_operation_activation(object, &op->op, __fscache_stat(&V0), __fscache_stat(&V1))
