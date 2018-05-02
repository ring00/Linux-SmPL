//# pattern-1, witnesses: 2
@@
expression list listE0;
@@
- ib_modify_cq(listE0)
+ rdma_set_cq_moderation(listE0)
