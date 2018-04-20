//# pattern-2, witnesses: 14
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
//# pattern-1, witnesses: 5
@@
expression E2;
expression EC1;
expression V0;
@@
- V0->type = EC1;
- err = dev->netdev_ops->ndo_setup_tc(dev, tp->q->handle, tp->chain->index, tp->protocol, E2);
+ err = dev->netdev_ops->ndo_setup_tc(dev, EC1, tp->q->handle, tp->chain->index, tp->protocol, E2);
//# pattern-5, witnesses: 5
@@
expression EC1;
expression V0;
@@
- V0->type = EC1;
//# pattern-10, witnesses: 4
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
identifier handle;
identifier net_dev;
identifier ntc;
identifier proto;
identifier r1.fn;
identifier type;
typedef u32;
@@
 int fn(struct net_device * net_dev, enum tc_setup_type type, u32 handle, u32 chain_index, __be16 proto, struct tc_to_netdev * ntc)
 {
     <...
- ntc->type != E0
+ type != E0
     ...>
 }
//# pattern-4, witnesses: 2
@@
@@
- dev->netdev_ops->ndo_setup_tc(dev, tp->q->handle, tp->chain->index, tp->protocol, &offload)
+ dev->netdev_ops->ndo_setup_tc(dev, TC_SETUP_CLSU32, tp->q->handle, tp->chain->index, tp->protocol, &offload)
//# pattern-11, witnesses: 2
@@
@@
- dev->netdev_ops->ndo_setup_tc(dev, sch->handle, 0, 0, &tc)
+ dev->netdev_ops->ndo_setup_tc(dev, TC_SETUP_MQPRIO, sch->handle, 0, 0, &tc)
//# pattern-12, witnesses: 2
@@
identifier s;
@@
 struct tc_to_netdev s = {
-    .type = TC_SETUP_MQPRIO,
 };
