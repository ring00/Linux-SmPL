//# pattern-1, witnesses: 2
@@
expression list listE0;
@@
- wmb_pmem(listE0)
+ nvdimm_flush(to_region(pmem))
