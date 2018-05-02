//# pattern-1, witnesses: 3
@@
@@
- segment_eq(get_fs, KERNEL_DS)
+ uaccess_kernel
//# pattern-2, witnesses: 2
@@
@@
- segment_eq
+ uaccess_kernel
