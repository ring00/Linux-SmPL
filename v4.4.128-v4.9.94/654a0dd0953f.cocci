//# pattern-1, witnesses: 2
@@
expression list listE0;
@@
- rcu_read_unlock(listE0);
//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- rcu_read_lock(listE0);
