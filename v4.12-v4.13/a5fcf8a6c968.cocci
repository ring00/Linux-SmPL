//# pattern-3, witnesses: 5
@r0@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_setup_tc = fn,
};
@@
typedef __be16;
identifier dev;
identifier handle;
identifier proto;
identifier r0.fn;
identifier tc;
typedef u32;
@@
- int fn(struct net_device * dev, u32 handle, __be16 proto, struct tc_to_netdev * tc)
+ int fn(struct net_device * dev, u32 handle, u32 chain_index, __be16 proto, struct tc_to_netdev * tc)
 { ... }
//# pattern-5, witnesses: 4
@r1@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_setup_tc = fn,
};
@@
typedef __be16;
identifier chain_index;
identifier handle;
identifier net_dev;
identifier ntc;
identifier proto;
identifier r1.fn;
typedef u32;
@@
 int fn(struct net_device * net_dev, u32 handle, u32 chain_index, __be16 proto, struct tc_to_netdev * ntc)
 { ... }
