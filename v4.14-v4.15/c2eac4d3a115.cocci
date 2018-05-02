//# pattern-1, witnesses: 3
@@
identifier ent;
identifier fn;
identifier pdev;
@@
 int fn(struct pci_dev * pdev, const struct pci_device_id * ent)
 {
     <...
- pdev->dev_flags |= PCI_DEV_FLAGS_NEEDS_RESUME;
+ dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_NEVER_SKIP);
     ...>
 }
