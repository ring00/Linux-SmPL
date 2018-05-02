//# pattern-1, witnesses: 2
@@
expression list listE0;
@@
- arch_has_pmem_api(listE0)
+ arch_has_wmb_pmem(listE0)
