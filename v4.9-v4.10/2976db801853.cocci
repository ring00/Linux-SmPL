//# pattern-1, witnesses: 2
@@
expression E0;
expression V1;
@@
- __page_frag_drain(E0, 0, V1->pagecnt_bias)
+ __page_frag_cache_drain(E0, V1->pagecnt_bias)
