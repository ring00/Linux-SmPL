//# pattern-8, witnesses: 4
@r0@
identifier i, fn;
@@
struct vm_operations_struct i = {
    .fault = fn,
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
- vma->vm_private_data
+ vmf->vma->vm_private_data
     ...>
 }
//# pattern-14, witnesses: 2
@r1@
identifier i, fn;
@@
struct vm_operations_struct i = {
    .fault = fn,
};
@@
identifier r1.fn;
identifier vmf;
@@
 int fn(struct vm_fault * vmf)
 {
     <...
- vm_insert_pfn(vma, vmf->address, pfn)
+ vm_insert_pfn(vmf->vma, vmf->address, pfn)
     ...>
 }
//# pattern-20, witnesses: 2
@r2@
identifier i, fn;
@@
struct vm_operations_struct i = {
    .page_mkwrite = fn,
};
@@
identifier vmf;
@@
 int btrfs_page_mkwrite(struct vm_fault * vmf)
 {
     <...
- vma->vm_file
+ vmf->vma->vm_file
     ...>
 }
//# pattern-22, witnesses: 2
@r3@
identifier i, fn;
@@
struct vm_operations_struct i = {
    .fault = fn,
};
@@
identifier r3.fn;
identifier vmf;
@@
 int fn(struct vm_fault * vmf)
 { ... }
//# pattern-37, witnesses: 2
@r4@
identifier i, fn;
@@
struct vm_operations_struct i = {
    .page_mkwrite = fn,
};
@@
identifier r4.fn;
identifier vmf;
@@
 int fn(struct vm_fault * vmf)
 {
     <...
- vma->vm_file
+ vmf->vma->vm_file
     ...>
 }
//# pattern-42, witnesses: 2
@r5@
identifier i, fn;
@@
struct vm_operations_struct i = {
    .fault = fn,
};
@@
identifier vmf;
@@
 int fb_deferred_io_fault(struct vm_fault * vmf)
 {
     <...
- vma->vm_file
+ vmf->vma->vm_file
     ...>
 }
//# pattern-43, witnesses: 2
@r6@
identifier i, fn;
@@
struct vm_operations_struct i = {
    .fault = fn,
};
@@
identifier vmf;
@@
 int msc_mmap_fault(struct vm_fault * vmf)
 {
     <...
- vma->vm_file
+ vmf->vma->vm_file
     ...>
 }
//# pattern-47, witnesses: 2
@r7@
identifier i, fn;
@@
struct vm_operations_struct i = {
    .fault = fn,
};
@@
identifier r7.fn;
identifier vmf;
@@
 int fn(struct vm_fault * vmf)
 {
     <...
- vma->vm_private_data
+ vmf->vma->vm_private_data
     ...>
 }
