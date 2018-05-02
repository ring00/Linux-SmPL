//# pattern-1, witnesses: 2
@@
identifier miphy_phy;
@@
 int miphy_osc_is_ready(struct miphy28lp_phy * miphy_phy)
 {
     <...
- miphy_phy->syscfg_miphy_status
+ miphy_phy->syscfg_reg[SYSCFG_STATUS]
     ...>
 }
//# pattern-2, witnesses: 2
@@
identifier miphy_phy;
identifier miphy_val;
typedef u32;
@@
 int miphy28lp_setup(struct miphy28lp_phy * miphy_phy, u32 miphy_val)
 {
     <...
- miphy_phy->syscfg_miphy_ctrl
+ miphy_phy->syscfg_reg[SYSCFG_CTRL]
     ...>
 }
//# pattern-3, witnesses: 2
@@
expression E0;
expression IL1;
identifier fn;
identifier miphy_phy;
@@
 int fn(struct miphy28lp_phy * miphy_phy)
 {
     <...
- regmap_update_bits(miphy_dev->regmap, miphy_phy->syscfg_sata, SATA_CTRL_MASK, E0);
- regmap_update_bits(miphy_dev->regmap, miphy_phy->syscfg_pci, PCIE_CTRL_MASK, IL1);
+ regmap_update_bits(miphy_dev->regmap, miphy_phy->syscfg_reg[SYSCFG_SATA], SATA_CTRL_MASK, E0);
+ regmap_update_bits(miphy_dev->regmap, miphy_phy->syscfg_reg[SYSCFG_PCI], PCIE_CTRL_MASK, IL1);
     ...>
 }
//# pattern-4, witnesses: 2
@@
identifier fn;
identifier miphy_phy;
@@
 int fn(struct miphy28lp_phy * miphy_phy)
 {
     <...
- !miphy_phy->syscfg_pci
+ !miphy_phy->syscfg_reg[SYSCFG_PCI]
     ...>
 }
