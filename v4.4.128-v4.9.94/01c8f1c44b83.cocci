//# pattern-4, witnesses: 5
@@
expression E0;
expression E1;
@@
- vm_insert_mixed(E0, E1, pfn)
+ vm_insert_mixed(E0, E1, __pfn_to_pfn_t(pfn, PFN_DEV))
