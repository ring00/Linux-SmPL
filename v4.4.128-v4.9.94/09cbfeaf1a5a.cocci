//# pattern-3, witnesses: 15
@@
@@
- PAGE_CACHE_SIZE
+ PAGE_SIZE
//# pattern-1, witnesses: 14
@@
expression E0;
@@
- page_cache_release(E0)
+ put_page(E0)
//# pattern-2, witnesses: 6
@@
@@
- PAGE_CACHE_SHIFT
+ PAGE_SHIFT
