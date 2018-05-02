//# pattern-1, witnesses: 41
@@
expression E0;
@@
- &E0->pci_dev->dev
+ E0->dev
//# pattern-3, witnesses: 7
@@
expression E0;
identifier dev;
identifier fn;
@@
 void fn(struct nvme_dev * dev)
 {
     <...
- &E0->dev
+ dev->dev
     ...>
 }
//# pattern-6, witnesses: 4
@@
@@
- dev->pci_dev
+ to_pci_dev(dev->dev)
//# pattern-10, witnesses: 3
@@
@@
- &dev->pci_dev->dev
+ dev->dev
//# pattern-7, witnesses: 2
@@
expression E2;
expression E3;
expression ME0;
expression S1;
identifier dev;
@@
 int nvme_setup_prp_pools(struct nvme_dev * dev)
 {
     <...
- struct device * dmadev = &dev->pci_dev->dev;
- ME0 = dma_pool_create(S1, dmadev, E2, E3, 0);
+ ME0 = dma_pool_create(S1, dev->dev, E2, E3, 0);
     ...>
 }
//# pattern-15, witnesses: 2
@@
@@
- pci_dev_put(dev->pci_dev)
+ put_device(dev->dev)
