//# pattern-1, witnesses: 11
@@
identifier s;
@@
 struct ttm_bo_driver s = {
-    .lru_tail = &ttm_bo_default_lru_tail,
-    .swap_lru_tail = &ttm_bo_default_swap_lru_tail,
 };
