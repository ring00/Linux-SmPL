//# pattern-1, witnesses: 4
@@
expression S0;
@@
- dev_err(&phydev->dev, S0)
+ phydev_err(phydev)
//# pattern-2, witnesses: 3
@@
expression E1;
expression S0;
identifier fn;
identifier phydev;
@@
 int fn(struct phy_device * phydev)
 {
     <...
- dev_err(&phydev->dev, S0, E1)
+ phydev_err(phydev)
     ...>
 }
//# pattern-3, witnesses: 2
@@
@@
- dev_dbg(&phydev->dev)
+ phydev_dbg(phydev)
