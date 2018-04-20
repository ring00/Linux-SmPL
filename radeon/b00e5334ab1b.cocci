//# pattern-1, witnesses: 3
@r0@
identifier i, fn;
@@
struct pci_driver i = {
    .probe = fn,
};
@@
statement S3;
identifier ent;
expression list listE0;
expression list listE1;
expression list listE2;
identifier pdev;
identifier r0.fn;
@@
 int fn(struct pci_dev * pdev, const struct pci_device_id * ent)
 {
     <...
- if (IS_ENABLED && IS_ENABLED && apple_gmux_present(listE0) && pdev != vga_default_device(listE1) && !vga_switcheroo_handler_flags(listE2)) { S3 }
+ if (vga_switcheroo_client_probe_defer(pdev)) { S3 }
     ...>
 }
