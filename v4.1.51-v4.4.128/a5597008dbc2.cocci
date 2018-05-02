//# pattern-1, witnesses: 2
@@
expression E1;
expression V0;
@@
- fixed_phy_register(PHY_POLL, &V0, E1)
+ fixed_phy_register(PHY_POLL, &V0, -1, E1)
