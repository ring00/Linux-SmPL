//# pattern-5, witnesses: 3
@@
expression list listE0;
@@
- read_lock_bh(&set->lock)
+ rcu_read_lock_bh(listE0)
//# pattern-7, witnesses: 3
@@
expression list listE0;
@@
- read_unlock_bh(&set->lock)
+ rcu_read_unlock_bh(listE0)
