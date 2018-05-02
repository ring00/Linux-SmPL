//# pattern-5, witnesses: 2
@@
@@
- up_write(&oom_sem)
+ mutex_unlock(&oom_lock)
