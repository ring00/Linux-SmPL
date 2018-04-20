//# pattern-1, witnesses: 8
@@
statement S0;
typedef __be16;
identifier arg_tc_to_netdev;
identifier fn;
identifier handle;
identifier netdev;
identifier proto;
typedef u32;
@@
 int fn(struct net_device * netdev, u32 handle, __be16 proto, struct tc_to_netdev * arg_tc_to_netdev)
 {
     <...
- if (handle != TC_H_ROOT || arg_tc_to_netdev->type != TC_SETUP_MQPRIO) { S0 }
+ if (arg_tc_to_netdev->type != TC_SETUP_MQPRIO) { S0 }
     ...>
 }
