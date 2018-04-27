//# pattern-1, witnesses: 21
@@
expression E0;
@@
- E0->addr
+ E0->mdio.addr
//# pattern-2, witnesses: 5
@@
expression E0;
@@
- &E0->dev
+ &E0->mdio.dev
//# pattern-3, witnesses: 2
@@
expression F0;
@@
- F0(phy_dev->bus, phy_dev->addr, i)
+ F0(phy_dev->mdio.bus, phy_dev->mdio.addr, i)
//# pattern-5, witnesses: 2
@@
expression E0;
@@
- smsc911x_mii_write(phy_dev->bus, phy_dev->addr, MII_BMCR, E0)
+ smsc911x_mii_write(phy_dev->mdio.bus, phy_dev->mdio.addr, MII_BMCR, E0)
