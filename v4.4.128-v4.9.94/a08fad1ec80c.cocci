//# pattern-1, witnesses: 4
@@
expression list listE0;
@@
- mutex_unlock(listE0)
+ spin_unlock(listE0)
//# pattern-2, witnesses: 4
@@
expression E0;
@@
- mutex_lock(&E0->graph_obj.mdev->graph_mutex)
+ spin_lock(&E0->graph_obj.mdev->lock)
//# pattern-3, witnesses: 4
@@
expression E0;
@@
- E0->graph_mutex
+ E0->lock
