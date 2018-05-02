//# pattern-1, witnesses: 4
@@
expression E0;
@@
- if (atomic_read(&E0->usecnt)) {
- }
//# pattern-2, witnesses: 3
@@
@@
- atomic_set(&mr->usecnt, 0);
