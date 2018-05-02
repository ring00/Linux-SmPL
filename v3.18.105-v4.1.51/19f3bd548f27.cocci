//# pattern-2, witnesses: 2
@@
identifier fn;
identifier pcr;
@@
 int fn(struct rtsx_pcr * pcr)
 {
     <...
- rtsx_gops_pm_reset(pcr)
+ rtsx_pci_write_register(pcr, PM_CTRL3, D3_DELINK_MODE_EN, 0)
     ...>
 }
