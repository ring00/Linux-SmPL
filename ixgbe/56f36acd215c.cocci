//# pattern-1, witnesses: 7
@@
typedef __be16;
identifier dev;
identifier fn;
identifier handle;
identifier proto;
identifier tc;
typedef u32;
@@
 int fn(struct net_device * dev, u32 handle, __be16 proto, struct tc_to_netdev * tc)
 {
     <...
- tc->tc
+ tc->mqprio->num_tc
     ...>
 }
//# pattern-16, witnesses: 2
@r0@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_setup_tc = fn,
};
@@
typedef __be16;
identifier handle;
identifier net_dev;
identifier ntc;
identifier proto;
identifier r0.fn;
typedef u32;
@@
 int fn(struct net_device * net_dev, u32 handle, __be16 proto, struct tc_to_netdev * ntc)
 {
     <...
- num_tc = ntc->tc;
+ num_tc = ntc->mqprio->num_tc;
+ ntc->mqprio->hw = TC_MQPRIO_HW_OFFLOAD_TCS;
     ...>
 }
