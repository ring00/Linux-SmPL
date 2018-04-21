//# pattern-1, witnesses: 12
@@
expression list listE0;
@@
- mutex_unlock(listE0)
+ up_write(listE0)
//# pattern-2, witnesses: 12
@@
expression E0;
@@
- mutex_lock(&E0->dqio_mutex)
+ down_write(&E0->dqio_sem)
//# pattern-3, witnesses: 12
@@
expression E0;
@@
- E0->dqio_mutex
+ E0->dqio_sem
