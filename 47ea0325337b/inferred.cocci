//# pattern-1, witnesses: 20
@r0@
identifier i, fn;
@@
struct ethtool_ops i = {
    .get_drvinfo = fn,
};
@@
expression E0;
identifier drvinfo;
identifier netdev;
identifier r0.fn;
@@
 void fn(struct net_device * netdev, struct ethtool_drvinfo * drvinfo)
 {
     <...
- drvinfo->regdump_len = E0;
     ...>
 }
//# pattern-2, witnesses: 20
@r1@
identifier i, fn;
@@
struct ethtool_ops i = {
    .get_drvinfo = fn,
};
@@
expression E0;
identifier drvinfo;
identifier netdev;
identifier r1.fn;
@@
 void fn(struct net_device * netdev, struct ethtool_drvinfo * drvinfo)
 {
     <...
- drvinfo->eedump_len = E0;
     ...>
 }
//# pattern-4, witnesses: 17
@r2@
identifier i, fn;
@@
struct ethtool_ops i = {
    .get_drvinfo = fn,
};
@@
expression E0;
identifier drvinfo;
identifier netdev;
identifier r2.fn;
@@
 void fn(struct net_device * netdev, struct ethtool_drvinfo * drvinfo)
 {
     <...
- drvinfo->n_stats = E0;
     ...>
 }
//# pattern-3, witnesses: 10
@r3@
identifier i, fn;
@@
struct ethtool_ops i = {
    .get_drvinfo = fn,
};
@@
expression E0;
identifier drvinfo;
identifier netdev;
identifier r3.fn;
@@
 void fn(struct net_device * netdev, struct ethtool_drvinfo * drvinfo)
 {
     <...
- drvinfo->testinfo_len = E0;
     ...>
 }
