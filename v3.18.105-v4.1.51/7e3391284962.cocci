//# pattern-1, witnesses: 4
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
expression E6;
expression IL5;
@@
- get_user_pages(E0, E1, E2, E3, E4, IL5, E6, NULL)
+ get_user_pages_unlocked(E0, E1, E2, E3, E4, IL5, E6)
//# pattern-2, witnesses: 2
@@
identifier addr;
identifier iter;
identifier len;
identifier mm;
identifier process_pages;
identifier task;
identifier vm_write;
@@
 int process_vm_rw_single_vec(unsigned long addr, unsigned long len, struct iov_iter * iter, struct page ** process_pages, struct mm_struct * mm, struct task_struct * task, int vm_write)
 {
     <...
- &mm->mmap_sem;
     ...>
 }
//# pattern-3, witnesses: 2
@@
@@
- &current->mm->mmap_sem;
//# pattern-4, witnesses: 2
@@
@@
- &current->mm->mmap_sem;
//# pattern-5, witnesses: 2
@@
@@
- &current->mm->mmap_sem;
