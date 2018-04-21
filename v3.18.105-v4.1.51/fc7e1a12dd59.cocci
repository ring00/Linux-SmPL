//# pattern-3, witnesses: 2
@@
expression E0;
@@
- persistent_ram_new(*paddr, sz, E0, &cxt->ecc_info, cxt->memtype)
+ persistent_ram_new(*paddr, sz, E0, &cxt->ecc_info, cxt->memtype, 0)
