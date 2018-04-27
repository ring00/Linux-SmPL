//# pattern-1, witnesses: 7
@r0@
identifier i, fn;
@@
struct ethtool_ops i = {
    .get_link_ksettings = fn,
};
@@
expression E0;
identifier cmd;
identifier dev;
identifier r0.fn;
@@
 int fn(struct net_device * dev, struct ethtool_link_ksettings * cmd)
 {
     <...
- return phy_ethtool_ksettings_get(E0, cmd);
+ phy_ethtool_ksettings_get(E0, cmd);
+ return 0;
     ...>
 }
