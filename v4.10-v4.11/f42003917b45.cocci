//# pattern-19, witnesses: 3
@r0@
identifier i, fn;
@@
struct vm_operations_struct i = {
    .pmd_fault = fn,
};
@@
identifier r0.fn;
identifier vma;
identifier vmf;
@@
- int fn(struct vm_area_struct * vma, struct vm_fault * vmf)
+ int fn(struct vm_fault * vmf)
 {
     <...
- vma->vm_file
+ vmf->vma->vm_file
     ...>
 }
