//# pattern-1, witnesses: 10
@@
identifier s;
@@
 struct ttm_bo_driver s = {
+    .eviction_valuable = ttm_bo_eviction_valuable,
 };
