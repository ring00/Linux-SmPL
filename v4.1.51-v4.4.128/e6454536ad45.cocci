//# pattern-1, witnesses: 6
@@
expression E0;
@@
- ip_tunnel_dst_reset_all(E0)
+ dst_cache_reset(&E0->dst_cache)
//# pattern-3, witnesses: 2
@@
@@
- free_percpu(tunnel->dst_cache)
+ dst_cache_destroy(&tunnel->dst_cache)
