//# pattern-5, witnesses: 3
@@
expression E0;
expression list listE1;
@@
- mutex_lock(&E0)
+ rtnl_lock(listE1)
//# pattern-6, witnesses: 3
@@
expression E0;
expression list listE1;
@@
- mutex_unlock(&E0)
+ rtnl_unlock(listE1)
