//# pattern-1, witnesses: 10
@@
expression E0;
@@
- pci_find_ext_capability(E0, PCI_EXT_CAP_ID_ERR)
+ E0->aer_cap
