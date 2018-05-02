//# pattern-3, witnesses: 9
@@
expression E0;
@@
- E0 | __GFP_COLD
+ E0
//# pattern-1, witnesses: 5
@@
expression E0;
expression E1;
@@
- __GFP_COLD | E0 | E1
+ E0 | E1
//# pattern-7, witnesses: 2
@@
expression list listE0;
@@
- page_cache_alloc_cold(listE0)
+ page_cache_alloc(listE0)
