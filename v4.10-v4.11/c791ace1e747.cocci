//# pattern-4, witnesses: 3
@@
expression V0;
identifier fn;
identifier vmf;
@@
 int fn(struct vm_fault * vmf)
 {
     <...
- dax_iomap_fault(vmf, &V0)
+ dax_iomap_fault(vmf, PE_SIZE_PTE, &V0)
     ...>
 }
//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct vm_operations_struct i = {
    .fault = fn,
};
@@
identifier vmf;
@@
 int ext4_dax_fault(struct vm_fault * vmf)
 {
     <...
- struct inode * inode = file_inode(vmf->vma->vm_file);
- struct super_block * sb = inode->i_sb;
- bool write = vmf->flags & FAULT_FLAG_WRITE;
- if (write) {
- }
     ...>
 }
//# pattern-3, witnesses: 2
@r1@
identifier i, fn;
@@
struct vm_operations_struct i = {
    .fault = fn,
};
@@
identifier vmf;
@@
 int ext4_dax_fault(struct vm_fault * vmf)
 {
     <...
- struct inode * inode = file_inode(vmf->vma->vm_file);
- &EXT4_I(inode)->i_mmap_sem;
     ...>
 }
//# pattern-7, witnesses: 2
@@
@@
- vmf->vma->vm_ops->huge_fault(vmf)
+ vmf->vma->vm_ops->huge_fault(vmf, PE_SIZE_PUD)
//# pattern-12, witnesses: 2
@@
@@
- vmf->vma->vm_ops->huge_fault(vmf)
+ vmf->vma->vm_ops->huge_fault(vmf, PE_SIZE_PMD)
