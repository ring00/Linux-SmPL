//# pattern-4, witnesses: 4
@@
@@
- phy_adjust_link(phydev);
//# pattern-10, witnesses: 3
@@
@@
- netif_carrier_on(phydev->attached_dev)
+ phy_link_up(phydev)
//# pattern-6, witnesses: 2
@@
@@
- netif_carrier_off(phydev->attached_dev);
- phy_adjust_link(phydev);
+ phy_link_down(phydev, true);
//# pattern-7, witnesses: 2
@@
@@
- netif_carrier_on(phydev->attached_dev);
- phy_adjust_link(phydev);
+ phy_link_up(phydev);
