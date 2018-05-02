//# pattern-14, witnesses: 2
@r0@
identifier i, fn;
@@
struct ethtool_ops i = {
    .set_pauseparam = fn,
};
@@
identifier netdev;
identifier pause;
@@
 int xgbe_set_pauseparam(struct net_device * netdev, struct ethtool_pauseparam * pause)
 {
     <...
- struct phy_device * phydev = pdata->phydev;
- if (pause->autoneg) {
- }
+ if (pause->autoneg) {
+ }
     ...>
 }
//# pattern-15, witnesses: 2
@r1@
identifier i, fn;
@@
struct ethtool_ops i = {
    .set_pauseparam = fn,
};
@@
expression E0;
identifier netdev;
identifier pause;
@@
 int xgbe_set_pauseparam(struct net_device * netdev, struct ethtool_pauseparam * pause)
 {
     <...
- struct phy_device * phydev = pdata->phydev;
- if (pause->autoneg) {
- phydev->advertising |= E0;
- }
+ if (pause->autoneg) {
+ pdata->phy.advertising |= E0;
+ }
     ...>
 }
