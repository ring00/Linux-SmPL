//# pattern-6, witnesses: 4
@@
expression list listE0;
@@
- lockdep_set_current_reclaim_state(listE0)
+ fs_reclaim_acquire(listE0)
