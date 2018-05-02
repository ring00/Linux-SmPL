//# pattern-1, witnesses: 14
@@
expression E0;
@@
- atomic_inc(&E0->mm_count)
+ mmgrab(E0)
