//# pattern-1, witnesses: 2
@@
expression list listE0;
@@
- sock->ops->setsockopt(listE0)
+ kernel_setsockopt(listE0)
//# pattern-4, witnesses: 2
@@
@@
- set_fs(KERNEL_DS);
