//# pattern-1, witnesses: 16
@@
expression E0;
@@
- mutex_unlock(&E0->i_mmap_mutex)
+ i_mmap_unlock_write(E0)
//# pattern-2, witnesses: 15
@@
expression E0;
@@
- mutex_lock(&E0->i_mmap_mutex)
+ i_mmap_lock_write(E0)
