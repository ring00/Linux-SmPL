//# pattern-2, witnesses: 2
@@
identifier phydev;
@@
 void phy_change(struct phy_device * phydev)
 {
     <...
- enable_irq(phydev->irq);
     ...>
 }
//# pattern-3, witnesses: 2
@@
identifier phydev;
@@
 void phy_change(struct phy_device * phydev)
 {
     <...
- &phydev->irq_disable;
     ...>
 }
