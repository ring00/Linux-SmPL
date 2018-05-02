//# pattern-2, witnesses: 3
@@
expression list listE0;
@@
- memcpy_to_pmem(listE0)
+ memcpy_flushcache(listE0)
