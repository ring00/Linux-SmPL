//# pattern-4, witnesses: 9
@@
expression list listE0;
@@
- flock_lock_file_wait(listE0)
+ locks_lock_file_wait(listE0)
//# pattern-1, witnesses: 6
@@
expression list listE0;
@@
- posix_lock_file_wait(listE0)
+ locks_lock_file_wait(listE0)
