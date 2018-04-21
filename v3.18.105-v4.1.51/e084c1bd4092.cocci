//# pattern-9, witnesses: 5
@@
expression ME0;
@@
- locks_delete_lock_ctx(fl, &ME0, &dispose)
+ locks_delete_lock_ctx(fl, &dispose)
//# pattern-3, witnesses: 3
@@
expression E0;
expression ME1;
expression ME2;
@@
- locks_insert_lock_ctx(E0, &ME1, &ME2)
+ locks_insert_lock_ctx(E0, &ME2)
