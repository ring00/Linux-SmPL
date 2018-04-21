//# pattern-1, witnesses: 2
@@
expression list listE0;
@@
- rcu_read_unlock(listE0);
//# pattern-2, witnesses: 2
@@
expression list listE0;
expression list listE1;
@@
- if (!atomic_long_inc_not_zero(&pin->count)) {
- rcu_read_unlock(listE0);
- cpu_relax(listE1);
- }
