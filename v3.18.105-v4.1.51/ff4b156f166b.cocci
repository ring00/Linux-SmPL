//# pattern-2, witnesses: 6
@@
expression list listE0;
@@
- free_xenballooned_pages(listE0)
+ gnttab_free_pages(listE0)
//# pattern-1, witnesses: 4
@@
expression E0;
expression E1;
@@
- alloc_xenballooned_pages(E0, E1, false)
+ gnttab_alloc_pages(E0, E1)
