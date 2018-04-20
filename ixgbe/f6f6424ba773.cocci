//# pattern-5, witnesses: 3
@r0@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_fdb_add = fn,
};
@@
identifier addr;
identifier dev;
identifier flags;
identifier ndm;
identifier r0.fn;
identifier tb;
typedef u16;
@@
- int fn(struct ndmsg * ndm, struct nlattr ** tb, struct net_device * dev, const unsigned char * addr, u16 flags)
+ int fn(struct ndmsg * ndm, struct nlattr ** tb, struct net_device * dev, const unsigned char * addr, u16 vid, u16 flags)
 { ... }
//# pattern-1, witnesses: 2
@r1@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_fdb_del = fn,
};
@@
identifier addr;
identifier dev;
identifier ndm;
identifier r1.fn;
identifier tb;
typedef u16;
@@
- int fn(struct ndmsg * ndm, struct nlattr ** tb, struct net_device * dev, const unsigned char * addr)
+ int fn(struct ndmsg * ndm, struct nlattr ** tb, struct net_device * dev, const unsigned char * addr, u16 vid)
 { ... }
//# pattern-4, witnesses: 2
@r2@
identifier i, fn;
@@
struct net_device_ops i = {
    .ndo_fdb_add = fn,
};
@@
identifier addr;
identifier flags;
identifier ndm;
identifier netdev;
identifier r2.fn;
identifier tb;
typedef u16;
identifier vid;
@@
 int fn(struct ndmsg * ndm, struct nlattr ** tb, struct net_device * netdev, const unsigned char * addr, u16 vid, u16 flags)
 {
     <...
- ndo_dflt_fdb_add(ndm, tb, netdev, addr, flags)
+ ndo_dflt_fdb_add(ndm, tb, netdev, addr, vid, flags)
     ...>
 }
