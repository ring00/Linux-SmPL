//# pattern-1, witnesses: 9
@@
expression E0;
expression IL1;
@@
- phy_read_mmd_indirect(phydev, E0, IL1, phydev->addr)
+ phy_read_mmd_indirect(phydev, E0, IL1)
//# pattern-2, witnesses: 5
@@
expression IL0;
expression IL1;
expression V2;
@@
- phy_write_mmd_indirect(phydev, IL0, IL1, phydev->addr, V2)
+ phy_write_mmd_indirect(phydev, IL0, IL1, V2)
//# pattern-4, witnesses: 3
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression IL0;
expression IL1;
identifier data;
identifier phydev;
@@
- int phy_ethtool_get_eee(struct phy_device * phydev, struct ethtool_eee * data)
+ int phy_ethtool_get_eee(struct phy_device * phydev, struct ethtool_eee * data)
 {
     <...
- phy_read_mmd_indirect(phydev, IL0, IL1, phydev->addr)
+ phy_read_mmd_indirect(phydev, IL0, IL1)
     ...>
 }
