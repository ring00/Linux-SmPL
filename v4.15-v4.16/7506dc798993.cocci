//# pattern-5, witnesses: 13
@@
expression E0;
expression S1;
@@
- dev_err(&E0->dev, S1)
+ pci_err(E0)
//# pattern-1, witnesses: 9
@@
expression E1;
expression S0;
@@
- dev_err(&dev->dev, S0, E1)
+ pci_err(dev)
//# pattern-4, witnesses: 7
@@
expression E2;
expression E3;
identifier PV0;
expression S1;
@@
- dev_err(&PV0->dev, S1, E2, E3)
+ pci_err(PV0)
//# pattern-7, witnesses: 6
@@
expression E2;
identifier PV0;
expression S1;
@@
- dev_printk(KERN_DEBUG, &PV0->dev, S1, E2)
+ pci_printk()
//# pattern-12, witnesses: 5
@@
expression E0;
expression S1;
@@
- dev_warn(&E0->dev, S1)
+ pci_warn(E0)
//# pattern-3, witnesses: 3
@@
expression E1;
expression S0;
@@
- dev_info(&dev->dev, S0, E1)
+ pci_info(dev, S0, E1)
//# pattern-9, witnesses: 3
@@
expression E2;
expression E3;
identifier PV0;
expression S1;
@@
- dev_warn(&PV0->dev, S1, E2, E3)
+ pci_warn(PV0)
//# pattern-11, witnesses: 3
@@
expression E0;
expression S1;
@@
- dev_info(&E0->dev, S1)
+ pci_info(E0, S1)
//# pattern-15, witnesses: 3
@r0@
identifier fn;
expression P0;
@@
pci_ea_read(P0, fn)
@@
expression E1;
expression S0;
identifier dev;
identifier offset;
@@
 int pci_ea_read(struct pci_dev * dev, int offset)
 {
     <...
- dev_printk(KERN_DEBUG, &dev->dev, S0, E1, res, prop)
+ pci_printk()
     ...>
 }
//# pattern-18, witnesses: 3
@@
expression E2;
expression E3;
expression E4;
identifier PV0;
expression S1;
@@
- dev_err(&PV0->dev, S1, E2, E3, E4)
+ pci_err(PV0)
//# pattern-23, witnesses: 3
@@
expression E1;
expression E2;
expression E3;
expression S0;
@@
- dev_info(&dev->dev, S0, E1, E2, E3)
+ pci_info(dev, S0, E1, E2, E3)
//# pattern-24, witnesses: 3
@@
expression E1;
expression S0;
@@
- dev_dbg(&dev->dev, S0, E1)
+ pci_dbg(dev, S0, E1)
//# pattern-26, witnesses: 3
@@
expression E1;
expression E2;
expression E3;
expression E4;
expression S0;
@@
- dev_err(&dev->dev, S0, E1, E2, E3, E4)
+ pci_err(dev)
//# pattern-8, witnesses: 2
@@
expression S0;
identifier dev;
identifier severity;
@@
 void do_recovery(struct pci_dev * dev, int severity)
 {
     <...
- dev_info(&dev->dev, S0)
+ pci_info(dev, S0)
     ...>
 }
//# pattern-16, witnesses: 2
@@
expression S0;
identifier dev;
identifier fn;
typedef pci_ers_result_t;
@@
 pci_ers_result_t fn(struct pci_dev * dev)
 {
     <...
- dev_printk(KERN_DEBUG, &dev->dev, S0)
+ pci_printk()
     ...>
 }
//# pattern-28, witnesses: 2
@@
expression E1;
expression E2;
expression S0;
@@
- dev_printk(KERN_DEBUG, &dev->dev, S0, E1, E2)
+ pci_printk()
