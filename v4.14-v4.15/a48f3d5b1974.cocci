//# pattern-1, witnesses: 2
@@
expression E0;
identifier PV1;
identifier PV2;
identifier dwreg;
identifier link;
identifier upreg;
@@
 void aspm_calc_l1ss_info(struct pcie_link_state * link, struct aspm_register_info * upreg, struct aspm_register_info * dwreg)
 {
     <...
- E0 = PV1->l1ss_cap >> 16 & 3
+ E0 = PV2->l1ss_cap & PCI_L1SS_CAP_P_PWR_ON_SCALE >> 16
     ...>
 }
//# pattern-2, witnesses: 2
@@
expression E0;
identifier PV1;
identifier PV2;
identifier dwreg;
identifier link;
identifier upreg;
@@
 void aspm_calc_l1ss_info(struct pcie_link_state * link, struct aspm_register_info * upreg, struct aspm_register_info * dwreg)
 {
     <...
- E0 = PV1->l1ss_cap >> 19 & 31
+ E0 = PV2->l1ss_cap & PCI_L1SS_CAP_P_PWR_ON_VALUE >> 19
     ...>
 }
//# pattern-3, witnesses: 2
@@
expression E0;
identifier PV1;
identifier dwreg;
identifier link;
identifier upreg;
@@
 void aspm_calc_l1ss_info(struct pcie_link_state * link, struct aspm_register_info * upreg, struct aspm_register_info * dwreg)
 {
     <...
- E0 = PV1->l1ss_cap >> 8 & 255
+ E0 = PV1->l1ss_cap & PCI_L1SS_CAP_CM_RESTORE_TIME >> 8
     ...>
 }
