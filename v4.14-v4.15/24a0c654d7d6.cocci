//# pattern-1, witnesses: 2
@@
identifier fn;
identifier slot;
@@
 int fn(struct slot * slot)
 { ... }
//# pattern-2, witnesses: 2
@@
@@
- if (pci_is_bridge(dev)) {
- }
+ if (!pci_is_bridge(dev)) {
+ }
