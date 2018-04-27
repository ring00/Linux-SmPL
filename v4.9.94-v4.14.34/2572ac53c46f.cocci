//# pattern-1, witnesses: 12
@r0@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_setup_tc = fn,
};
@@
typedef __be16;
identifier arg_tc_to_netdev;
identifier chain_index;
identifier handle;
identifier netdev;
identifier proto;
identifier r0.fn;
typedef u32;
@@
- int fn(struct net_device * netdev, u32 handle, u32 chain_index, __be16 proto, struct tc_to_netdev * arg_tc_to_netdev)
+ int fn(struct net_device * netdev, enum tc_setup_type type, u32 handle, u32 chain_index, __be16 proto, struct tc_to_netdev * arg_tc_to_netdev)
 {
     <...
- arg_tc_to_netdev->type
+ type
     ...>
 }
//# pattern-6, witnesses: 2
@r1@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_setup_tc = fn,
};
@@
expression E0;
typedef __be16;
identifier chain_index;
identifier dev;
identifier handle;
identifier proto;
identifier r1.fn;
identifier tc;
identifier type;
typedef u32;
@@
 int fn(struct net_device * dev, enum tc_setup_type type, u32 handle, u32 chain_index, __be16 proto, struct tc_to_netdev * tc)
 {
     <...
- tc->type != E0
+ type != E0
     ...>
 }
