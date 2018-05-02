//# pattern-1, witnesses: 10
@@
identifier s;
@@
 struct ttm_bo_driver s = {
+    .io_mem_pfn = ttm_bo_default_io_mem_pfn,
 };
