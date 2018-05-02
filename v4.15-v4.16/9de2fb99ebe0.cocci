//# pattern-1, witnesses: 3
@@
expression E0;
@@
- ttm_mem_global_alloc_page(mem_glob, ttm->pages[i], E0)
+ ttm_mem_global_alloc_page(mem_glob, ttm->pages[i], E0, &ctx)
