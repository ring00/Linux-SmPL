//# pattern-1, witnesses: 6
@@
expression E0;
expression E1;
expression E2;
@@
- vm_stat_account(mm, E0, E1, E2)
+ vm_stat_account(mm, E0, E2)
//# pattern-8, witnesses: 3
@@
expression E0;
@@
- E0->shared_vm
+ E0->data_vm
//# pattern-13, witnesses: 2
@@
expression BO0;
expression E1;
expression E2;
identifier addr;
identifier file;
identifier len;
identifier pgoff;
identifier vm_flags;
typedef vm_flags_t;
@@
 unsigned long mmap_region(struct file * file, unsigned long addr, unsigned long len, vm_flags_t vm_flags, unsigned long pgoff)
 {
     <...
- may_expand_vm(mm, BO0)
+ may_expand_vm(mm, vm_flags, E1 BO0 E2)
     ...>
 }
