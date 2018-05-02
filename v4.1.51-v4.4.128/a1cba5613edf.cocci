//# pattern-4, witnesses: 23
@@
expression list listE0;
@@
- phy_write_misc(listE0)
+ bcm_phy_write_misc(listE0)
//# pattern-3, witnesses: 9
@@
expression list listE0;
@@
- bcm54xx_exp_write(listE0)
+ bcm_phy_write_exp(listE0)
//# pattern-1, witnesses: 6
@@
expression list listE0;
@@
- bcm54xx_shadow_write(listE0)
+ bcm_phy_write_shadow(listE0)
//# pattern-6, witnesses: 4
@@
expression list listE0;
@@
- bcm54xx_shadow_read(listE0)
+ bcm_phy_read_shadow(listE0)
//# pattern-10, witnesses: 3
@@
expression list listE0;
@@
- bcm54xx_exp_read(listE0)
+ bcm_phy_read_exp(listE0)
//# pattern-8, witnesses: 2
@@
expression list listE0;
@@
- phy_write_exp(listE0)
+ bcm_phy_write_exp(listE0)
