//# pattern-6, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
expression IL1;
identifier dev;
identifier maxvec;
identifier minvec;
@@
- int pci_enable_msi_range(struct pci_dev * dev, int minvec, int maxvec)
+ int pci_enable_msi_range(struct pci_dev * dev, int minvec, int maxvec)
 {
     <...
- if (E0) {
- return -IL1;
- }
     ...>
 }
