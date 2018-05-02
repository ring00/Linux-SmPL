//# pattern-1, witnesses: 10
@@
expression V0;
@@
- dev_name(&V0->dev)
+ phydev_name(V0)
//# pattern-2, witnesses: 2
@@
expression F0;
expression V1;
identifier fn;
identifier netdev;
@@
 int fn(struct net_device * netdev)
 {
     <...
- phydev = phy_connect(netdev, dev_name(&phydev->dev), &F0, PHY_INTERFACE_MODE_MII);
- dev_info(&V1->pdev->dev, "attached PHY driver [%s] (mii_bus:phy_addr=%s)\n", phydev->drv->name, dev_name(&phydev->dev));
+ phydev = phy_connect(netdev, phydev_name(phydev), &F0, PHY_INTERFACE_MODE_MII);
+ dev_info(&V1->pdev->dev, "attached PHY driver [%s] (mii_bus:phy_addr=%s)\n", phydev->drv->name, phydev_name(phydev));
     ...>
 }
//# pattern-3, witnesses: 2
@@
@@
- phydev->drv->name
+ phydev_name(phydev)
