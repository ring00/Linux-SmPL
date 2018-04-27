//# pattern-1, witnesses: 2
@@
expression list listE0;
@@
- mutex_lock(&netdev_switch_mutex)
+ rtnl_lock(listE0)
//# pattern-3, witnesses: 2
@@
expression list listE0;
@@
- mutex_unlock(&netdev_switch_mutex)
+ rtnl_unlock(listE0)
