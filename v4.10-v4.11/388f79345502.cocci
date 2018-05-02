//# pattern-1, witnesses: 8
@@
expression E0;
@@
- atomic_inc_not_zero(&E0->mm_users)
+ mmget_not_zero(E0)
