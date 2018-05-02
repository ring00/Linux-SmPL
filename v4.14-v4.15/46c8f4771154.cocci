//# pattern-4, witnesses: 3
@@
@@
- mutex_unlock(&lirc_dev_lock);
//# pattern-6, witnesses: 2
@@
@@
- mutex_lock(&lirc_dev_lock);
//# pattern-7, witnesses: 2
@@
@@
- MAX_IRCTL_DEVICES
+ LIRC_MAX_DEVICES
