//# pattern-1, witnesses: 24
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
//# pattern-2, witnesses: 21
@@
expression E0;
identifier drvinfo;
identifier fn;
identifier netdev;
@@
 void fn(struct net_device * netdev, struct ethtool_drvinfo * drvinfo)
 {
     <...
- drvinfo->eedump_len = E0;
     ...>
 }
//# pattern-4, witnesses: 17
@@
expression E0;
identifier drvinfo;
identifier fn;
identifier netdev;
@@
 void fn(struct net_device * netdev, struct ethtool_drvinfo * drvinfo)
 {
     <...
- drvinfo->n_stats = E0;
     ...>
 }
//# pattern-3, witnesses: 10
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
- drvinfo->testinfo_len = E0;
     ...>
 }
