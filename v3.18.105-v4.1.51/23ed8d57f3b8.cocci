//# pattern-1, witnesses: 2
@@
expression list listE0;
@@
- __msi_mask_irq(listE0)
+ __pci_msi_desc_mask_irq(listE0)
//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- __msix_mask_irq(listE0)
+ __pci_msix_desc_mask_irq(listE0)
