//# pattern-3, witnesses: 11
@@
expression E0;
expression E1;
expression EC2;
@@
- ttm_mem_global_alloc(E0, E1, false, EC2)
+ ttm_mem_global_alloc(E0, E1, &ctx)
//# pattern-10, witnesses: 4
@@
expression V0;
@@
- ttm_mem_global_alloc(vmw_mem_glob(dev_priv), V0, false, true)
+ ttm_mem_global_alloc(vmw_mem_glob(dev_priv), V0, &ttm_opt_ctx)
