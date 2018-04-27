//# pattern-4, witnesses: 5
@@
@@
- ip6_tnl_dst_reset(t)
+ dst_cache_reset(&t->dst_cache)
//# pattern-1, witnesses: 2
@@
@@
- ip6_tnl_dst_destroy(t)
+ dst_cache_destroy(&t->dst_cache)
//# pattern-6, witnesses: 2
@@
expression V0;
@@
- ip6_tnl_dst_init(V0)
+ dst_cache_init(&V0->dst_cache, GFP_KERNEL)
