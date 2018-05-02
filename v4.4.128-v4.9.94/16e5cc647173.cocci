//# pattern-2, witnesses: 4
@r0@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_setup_tc = fn,
};
@@
statement S0;
typedef __be16;
identifier dev;
identifier handle;
identifier r0.fn;
identifier tc;
typedef u32;
typedef u8;
@@
- int fn(struct net_device * dev, u32 handle, u8 tc)
+ int fn(struct net_device * dev, u32 handle, __be16 proto, struct tc_to_netdev * tc)
 {
     <...
- if (handle != TC_H_ROOT) { S0 }
+ if (handle != TC_H_ROOT || tc->type != TC_SETUP_MQPRIO) { S0 }
     ...>
 }
