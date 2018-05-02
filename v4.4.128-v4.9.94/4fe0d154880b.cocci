//# pattern-1, witnesses: 2
@@
statement S0;
@@
- if (!flags & PCI_IRQ_NOAFFINITY) { S0 }
+ if (flags & PCI_IRQ_AFFINITY) { S0 }
//# pattern-2, witnesses: 2
@@
@@
- PCI_IRQ_NOAFFINITY
+ 0
