//# pattern-7, witnesses: 2
@@
identifier dev;
identifier fn;
@@
 int fn(struct device * dev)
 {
     ...
- if (!pm) {
- }
+ if (!pm) {
+ return 0;
+ }
+ if (!dev_pm_test_driver_flags(dev, DPM_FLAG_SMART_SUSPEND) || !pci_dev_keep_suspended(pci_dev)) {
+ }
 }
