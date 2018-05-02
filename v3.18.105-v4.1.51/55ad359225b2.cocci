//# pattern-6, witnesses: 2
@@
expression E0;
identifier fn;
typedef pci_ers_result_t;
identifier pdev;
@@
 pci_ers_result_t fn(struct pci_dev * pdev)
 {
     <...
- mlx4_load_one(pdev, E0, total_vfs, nvfs, priv)
+ mlx4_load_one(pdev, E0, total_vfs, nvfs, priv, 1)
     ...>
 }
//# pattern-12, witnesses: 2
@@
identifier dev;
identifier fn;
@@
 int fn(struct mlx4_dev * dev)
 {
     <...
- if (!mlx4_is_slave(dev)) {
- }
     ...>
 }
