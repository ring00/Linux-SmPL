//# pattern-1, witnesses: 9
@@
expression E0;
@@
- E0->i_lock
+ NFS_I(E0)->commit_mutex
//# pattern-7, witnesses: 7
@@
expression list listE0;
@@
- spin_unlock(listE0)
+ mutex_unlock(listE0)
//# pattern-3, witnesses: 5
@@
expression E0;
@@
- spin_lock(&E0->i_lock)
+ mutex_lock
