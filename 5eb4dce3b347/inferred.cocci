//# pattern-1, witnesses: 8
@r0@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_setup_tc = fn,
};
@@
statement S0;
typedef __be16;
identifier arg_tc_to_netdev;
identifier handle;
identifier netdev;
identifier proto;
identifier r0.fn;
typedef u32;
@@
 int fn(struct net_device * netdev, u32 handle, __be16 proto, struct tc_to_netdev * arg_tc_to_netdev)
 {
     <...
- if (handle != TC_H_ROOT || arg_tc_to_netdev->type != TC_SETUP_MQPRIO) { S0 }
+ if (arg_tc_to_netdev->type != TC_SETUP_MQPRIO) { S0 }
     ...>
 }
