//# pattern-2, witnesses: 6
@@
expression E0;
@@
- E0->pfmemalloc
+ page_is_pfmemalloc(E0)
