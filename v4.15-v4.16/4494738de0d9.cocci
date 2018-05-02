//# pattern-7, witnesses: 4
@@
expression ME1;
expression V0;
@@
- pci_epc_map_addr(epc, V0, ME1, reg->size)
+ pci_epc_map_addr(epc, epf->func_no, V0, ME1, reg->size)
//# pattern-9, witnesses: 4
@@
expression E1;
expression EC0;
@@
- pci_epc_raise_irq(epc, EC0, E1)
+ pci_epc_raise_irq(epc, epf->func_no, EC0, E1)
//# pattern-16, witnesses: 4
@@
expression V0;
@@
- pci_epc_unmap_addr(epc, V0)
+ pci_epc_unmap_addr(epc, epf->func_no, V0)
//# pattern-11, witnesses: 2
@@
@@
- pci_epc_get_msi(epc)
+ pci_epc_get_msi(epc, epf->func_no)
