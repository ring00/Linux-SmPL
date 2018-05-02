//# pattern-4, witnesses: 2
@@
expression list listE0;
@@
- mutex_lock(&switchdev_mutex)
+ rtnl_lock(listE0)
//# pattern-5, witnesses: 2
@@
expression list listE0;
@@
- mutex_unlock(&switchdev_mutex)
+ rtnl_unlock(listE0)
