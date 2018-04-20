//# pattern-16, witnesses: 3
@r0@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_setup_tc = fn,
};
@@
identifier net_dev;
identifier ntc;
identifier r0.fn;
identifier type;
@@
- int fn(struct net_device * net_dev, enum tc_setup_type type, struct tc_to_netdev * ntc)
+ int fn(struct net_device * net_dev, enum tc_setup_type type, void * type_data)
 {
     <...
- ntc->mqprio
+ mqprio
     ...>
 }
//# pattern-4, witnesses: 2
@r1@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_setup_tc = fn,
};
@@
identifier dev;
identifier r1.fn;
identifier type;
identifier type_data;
@@
 int fn(struct net_device * dev, enum tc_setup_type type, void * type_data)
 {
     <...
- tc->cls_flower
+ type_data
     ...>
 }
//# pattern-5, witnesses: 2
@r2@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_setup_tc = fn,
};
@@
identifier dev;
identifier r2.fn;
identifier type;
identifier type_data;
@@
 int fn(struct net_device * dev, enum tc_setup_type type, void * type_data)
 {
     <...
- tc->cls_mall
+ type_data
     ...>
 }
//# pattern-13, witnesses: 2
@r3@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_setup_tc = fn,
};
@@
identifier dev;
identifier r3.fn;
identifier type;
identifier type_data;
@@
 int fn(struct net_device * dev, enum tc_setup_type type, void * type_data)
 {
     <...
- tc->cls_u32
+ type_data
     ...>
 }
//# pattern-20, witnesses: 2
@r4@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_setup_tc = fn,
};
@@
identifier dev;
identifier r4.fn;
identifier type;
identifier type_data;
@@
 int fn(struct net_device * dev, enum tc_setup_type type, void * type_data)
 {
     <...
- tc->mqprio
+ type_data
     ...>
 }
//# pattern-21, witnesses: 2
@r5@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_setup_tc = fn,
};
@@
identifier dev;
identifier r5.fn;
identifier type;
identifier type_data;
@@
 int fn(struct net_device * dev, enum tc_setup_type type, void * type_data)
 {
     <...
- tc->mqprio
+ mqprio
     ...>
 }
