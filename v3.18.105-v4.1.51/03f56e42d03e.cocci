//# pattern-1, witnesses: 2
@@
@@
- x86_msi.msix_mask_irq = xen_nop_msix_mask_irq;
//# pattern-2, witnesses: 2
@@
@@
- x86_msi.msi_mask_irq = xen_nop_msi_mask_irq;
//# pattern-3, witnesses: 2
@@
expression list listE0;
@@
- arch_msi_mask_irq(listE0)
+ __msi_mask_irq(listE0)
//# pattern-4, witnesses: 2
@@
expression list listE0;
@@
- arch_msix_mask_irq(listE0)
+ __msix_mask_irq(listE0)
