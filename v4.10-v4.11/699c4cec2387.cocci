//# pattern-1, witnesses: 2
@@
identifier dev;
identifier fn;
identifier nvec;
identifier type;
@@
 int fn(struct pci_dev * dev, int nvec, int type)
 {
     <...
- pci_msi_domain_alloc_irqs(domain, dev, nvec, type)
+ msi_domain_alloc_irqs(domain, &dev->dev, nvec)
     ...>
 }
