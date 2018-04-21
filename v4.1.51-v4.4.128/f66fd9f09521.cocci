//# pattern-9, witnesses: 2
@@
expression list listE0;
@@
- kfree(listE0)
+ ceph_free_cap_flush(listE0)
