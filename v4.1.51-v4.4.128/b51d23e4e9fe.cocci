//# pattern-2, witnesses: 4
@@
@@
- kparam_block_sysfs_write;
- kparam_unblock_sysfs_write;
+ kernel_param_lock(THIS_MODULE);
+ kernel_param_unlock(THIS_MODULE);
