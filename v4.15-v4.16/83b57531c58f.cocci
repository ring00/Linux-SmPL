//# pattern-3, witnesses: 6
@@
expression E0;
expression E1;
expression E2;
@@
- memory_failure(E0, E1, E2)
+ memory_failure(E0, E2)
//# pattern-9, witnesses: 2
@@
expression E0;
@@
- memory_failure_queue(pfn, 0, E0)
+ memory_failure_queue(pfn, E0)
