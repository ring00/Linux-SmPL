//# pattern-2, witnesses: 10
@@
@@
- pci_release_selected_regions(pdev, pci_select_bars(pdev, IORESOURCE_MEM))
+ pci_release_mem_regions(pdev)
//# pattern-1, witnesses: 4
@r0@
identifier i, fn;
@@
struct pci_driver i = {
    .probe = fn,
};
@@
expression V0;
identifier ent;
identifier pdev;
identifier r0.fn;
@@
 int fn(struct pci_dev * pdev, const struct pci_device_id * ent)
 {
     <...
- pci_request_selected_regions(pdev, pci_select_bars(pdev, IORESOURCE_MEM), V0)
+ pci_request_mem_regions(pdev, V0)
     ...>
 }
