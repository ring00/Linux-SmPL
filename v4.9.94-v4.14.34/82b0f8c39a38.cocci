//# pattern-46, witnesses: 2
@r0@
identifier i, fn;
@@
struct vm_operations_struct i = {
    .map_pages = fn,
};
@@
identifier end_pgoff;
identifier fe;
identifier start_pgoff;
@@
- void filemap_map_pages(struct fault_env * fe, unsigned long start_pgoff, unsigned long end_pgoff)
+ void filemap_map_pages(struct vm_fault * vmf, unsigned long start_pgoff, unsigned long end_pgoff)
 {
     <...
- fe->pte
+ vmf->pte
     ...>
 }
