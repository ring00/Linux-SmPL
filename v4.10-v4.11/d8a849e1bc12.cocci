//# pattern-5, witnesses: 4
@r0@
identifier i, fn;
@@
struct vm_operations_struct i = {
    .pmd_fault = fn,
};
@@
identifier addr;
identifier flags;
identifier pmd;
identifier r0.fn;
identifier vma;
@@
- int fn(struct vm_area_struct * vma, unsigned long addr, pmd_t * pmd, unsigned int flags)
+ int fn(struct vm_area_struct * vma, struct vm_fault * vmf)
 {
     <...
- flags & FAULT_FLAG_WRITE
+ vmf->flags & FAULT_FLAG_WRITE
     ...>
 }
//# pattern-8, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0->vm_ops->pmd_fault(E1, vmf->address, vmf->pmd, vmf->flags)
+ E0->vm_ops->pmd_fault(E1, vmf)
//# pattern-9, witnesses: 2
@r1@
identifier i, fn;
@@
struct vm_operations_struct i = {
    .pmd_fault = fn,
};
@@
expression V0;
identifier r1.fn;
identifier vma;
identifier vmf;
@@
 int fn(struct vm_area_struct * vma, struct vm_fault * vmf)
 {
     <...
- dax_iomap_pmd_fault(vma, addr, pmd, flags, &V0)
+ dax_iomap_pmd_fault(vma, vmf, &V0)
     ...>
 }
