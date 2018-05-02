//# pattern-3, witnesses: 2
@@
expression E0;
@@
- ttm_mem_global_free_page(ttm->glob->mem_glob, E0)
+ ttm_mem_global_free_page(ttm->glob->mem_glob, E0, pool->size)
