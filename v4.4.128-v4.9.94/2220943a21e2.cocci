//# pattern-1, witnesses: 3
@@
expression E0;
@@
- dev_info(E0, "attached PHY driver [%s] (mii_bus:phy_addr=%s)\n", phydev->drv->name, phydev_name(phydev))
+ phy_attached_info(phydev)
//# pattern-4, witnesses: 2
@@
identifier fn;
identifier ndev;
@@
 int fn(struct net_device * ndev)
 {
     <...
- netdev_info(ndev, "attached PHY %d (IRQ %d) to driver %s\n", phydev->addr, phydev->irq, phydev_name(phydev))
+ phy_attached_info(phydev)
     ...>
 }
