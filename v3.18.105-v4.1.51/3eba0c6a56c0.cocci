//# pattern-2, witnesses: 2
@@
@@
- zpool_create_pool(zswap_zpool_type, gfp, &zswap_zpool_ops)
+ zpool_create_pool(zswap_zpool_type, "zswap", gfp, &zswap_zpool_ops)
