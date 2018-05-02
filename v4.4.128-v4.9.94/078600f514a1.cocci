//# pattern-5, witnesses: 4
@@
@@
- !dev->initialized
+ !atomic_read(&dev->initialized)
//# pattern-2, witnesses: 2
@@
@@
- -EINVAL
+ -ERESTARTSYS
//# pattern-3, witnesses: 2
@@
@@
- mutex_unlock(&dev->lock);
//# pattern-6, witnesses: 2
@@
expression V0;
@@
- V0 = -EINVAL;
+ return -ERESTARTSYS;
