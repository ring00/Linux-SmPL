//# pattern-5, witnesses: 3
@@
expression S1;
expression V0;
@@
- V0 = kmem_cache_create(S1, sizeof(unsigned long), 0, SLAB_HWCACHE_ALIGN, NULL);
//# pattern-1, witnesses: 2
@@
expression V0;
@@
- kmem_cache_destroy(V0);
