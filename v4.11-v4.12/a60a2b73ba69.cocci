//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier dev;
identifier probe;
@@
- int pcie_flr(struct pci_dev * dev, int probe)
+ void pcie_flr(struct pci_dev * dev)
 { ... }
