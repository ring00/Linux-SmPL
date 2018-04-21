//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
@@
- persistent_ram_new(*paddr, E0, E1, &cxt->ecc_info, cxt->memtype)
+ persistent_ram_new(*paddr, E0, E1, &cxt->ecc_info, cxt->memtype, 0)
