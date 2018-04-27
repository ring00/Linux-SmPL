//# pattern-2, witnesses: 3
@@
expression list listE0;
@@
- svc_rdma_get_page(listE0)
+ alloc_page(__GFP_NOFAIL)
//# pattern-1, witnesses: 2
@@
expression V0;
expression V1;
@@
+ V0 = kmem_cache_alloc(V1, GFP_KERNEL | __GFP_NOFAIL);
