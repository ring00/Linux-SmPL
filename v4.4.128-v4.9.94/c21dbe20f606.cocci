//# pattern-3, witnesses: 15
@@
expression E0;
@@
- E0->notification_mutex
+ E0->notification_lock
//# pattern-5, witnesses: 15
@@
expression list listE0;
@@
- mutex_unlock(listE0)
+ spin_unlock(listE0)
//# pattern-1, witnesses: 12
@@
@@
- mutex_lock(&group->notification_mutex)
+ spin_lock(&group->notification_lock)
//# pattern-2, witnesses: 4
@@
@@
- BUG_ON(!mutex_is_locked(&group->notification_mutex))
+ BUG_ON(1 && !spin_is_locked(&group->notification_lock))
