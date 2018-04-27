//# pattern-1, witnesses: 7
@@
expression E0;
@@
- E0->pfmemalloc
+ page_is_pfmemalloc(E0)
