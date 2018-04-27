//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct rtnl_af_ops i = {
    .get_link_af_size = fn,
};
@@
identifier dev;
identifier r0.fn;
typedef u32;
@@
- size_t fn(const struct net_device * dev)
+ size_t fn(const struct net_device * dev, u32 ext_filter_mask)
 { ... }
