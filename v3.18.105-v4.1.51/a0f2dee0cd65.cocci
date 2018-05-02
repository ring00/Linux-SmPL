//# pattern-1, witnesses: 4
@@
expression E1;
expression E2;
expression E3;
identifier PV0;
@@
- xen_dma_map_page(PV0, E1, E2, E3, dir, attrs)
+ xen_dma_map_page(PV0, E1, dev_addr, E2, E3, dir, attrs)
