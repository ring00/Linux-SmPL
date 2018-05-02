//# pattern-1, witnesses: 2
@@
identifier PV0;
expression V1;
@@
- xen_arch_need_swiotlb(PV0, PFN_DOWN(V1), PFN_DOWN(dev_addr))
+ xen_arch_need_swiotlb(PV0, V1, dev_addr)
