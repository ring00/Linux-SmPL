//# pattern-1, witnesses: 9
@@
expression E0;
expression E1;
@@
- drm_pci_init(E0, E1)
+ pci_register_driver
//# pattern-4, witnesses: 9
@@
expression E0;
expression E1;
@@
- drm_pci_exit(E0, E1)
+ pci_unregister_driver(E1)
//# pattern-2, witnesses: 5
@@
expression list listE0;
@@
- drm_pci_exit(listE0)
+ drm_legacy_pci_exit(listE0)
//# pattern-3, witnesses: 5
@@
expression list listE0;
@@
- drm_pci_init(listE0)
+ drm_legacy_pci_init(listE0)
