//# pattern-1, witnesses: 2
@@
@@
- rcu_dereference(ireq->ireq_opt)
+ ireq_opt_deref(ireq)
