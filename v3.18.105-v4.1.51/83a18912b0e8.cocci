//# pattern-1, witnesses: 3
@@
expression list listE0;
@@
- __write_msi_msg(listE0)
+ __pci_write_msi_msg(listE0)
//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- write_msi_msg(listE0)
+ pci_write_msi_msg(listE0)
