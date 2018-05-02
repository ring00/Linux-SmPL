//# pattern-4, witnesses: 2
@@
expression E0;
expression E1;
@@
- IO_APIC_get_PCI_irq_vector(E0->bus->number, PCI_SLOT(E1->devfn), pin - 1, &irq_attr)
+ IO_APIC_get_PCI_irq_vector(E0->bus->number, PCI_SLOT(E1->devfn), pin - 1)
