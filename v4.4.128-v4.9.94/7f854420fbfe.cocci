//# pattern-1, witnesses: 25
@@
expression E0;
expression E1;
@@
- E0->phy_map[E1]
+ mdiobus_get_phy(E0, E1)
//# pattern-4, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0->phy_map[E1]
+ mdiobus_is_registered_device(E0, E1)
