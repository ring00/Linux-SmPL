//# pattern-1, witnesses: 6
@r0@
identifier i, fn;
@@
struct ethtool_ops i = {
    .get_link_ksettings = fn,
};
@@
expression V0;
identifier cmd;
identifier dev;
identifier r0.fn;
@@
 int fn(struct net_device * dev, struct ethtool_link_ksettings * cmd)
 {
     <...
- return mii_ethtool_get_link_ksettings(&V0->mii, cmd);
+ mii_ethtool_get_link_ksettings(&V0->mii, cmd);
+ return 0;
     ...>
 }
