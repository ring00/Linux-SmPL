//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_setup_tc = fn,
};
@@
identifier dev;
identifier r0.fn;
identifier tc;
identifier type;
@@
- int fn(struct net_device * dev, enum tc_setup_type type, struct tc_to_netdev * tc)
+ int fn(struct net_device * dev, enum tc_setup_type type, void * type_data)
 {
     <...
- tc->cls_flower
+ type_data
     ...>
 }
//# pattern-7, witnesses: 2
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
- tc->cls_u32
+ type_data
     ...>
 }
//# pattern-10, witnesses: 2
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
- tc->mqprio
+ type_data
     ...>
 }
