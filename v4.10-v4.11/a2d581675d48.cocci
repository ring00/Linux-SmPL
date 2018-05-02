//# pattern-13, witnesses: 4
@@
expression E0;
@@
- E0->pmd_fault
+ E0->huge_fault
//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
expression E1;
identifier ops;
identifier vmf;
@@
 int dax_iomap_fault(struct vm_fault * vmf, const struct iomap_ops * ops)
 {
     <...
- unsigned long vaddr = vmf->address;
- loff_t pos = vmf->pgoff << PAGE_SHIFT;
- struct iomap iomap = ;
- int error = error;
- int vmf_ret = 0;
- void * entry = entry;
- error = ops->iomap_begin(inode, pos, PAGE_SIZE, flags, &iomap);
- if (E0) {
- }
- if (E1) {
- }
     ...>
 }
//# pattern-6, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
type T0;
expression V1;
identifier ops;
identifier vmf;
@@
 int dax_iomap_fault(struct vm_fault * vmf, const struct iomap_ops * ops)
 {
     <...
- struct address_space * mapping = vmf->vma->vm_file->f_mapping;
- T0  = V1;
     ...>
 }
