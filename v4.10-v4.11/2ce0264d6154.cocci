//# pattern-1, witnesses: 4
@@
expression E0;
@@
- drm_pci_device_is_agp(E0)
+ pci_find_capability(E0->pdev, PCI_CAP_ID_AGP)
