//# pattern-4, witnesses: 3
@@
expression E0;
expression E1;
expression E4;
identifier PV2;
expression V3;
@@
- get_user_pages_remote(E0, E1, PV2, 1, 0, 1, &V3, E4)
+ get_user_pages_remote(E0, E1, PV2, 1, FOLL_FORCE, &V3, E4)
//# pattern-8, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression IL1;
identifier PV0;
identifier force;
identifier mm;
identifier nr_pages;
identifier pages;
identifier start;
identifier tsk;
identifier vmas;
identifier write;
@@
- long get_user_pages_remote(struct task_struct * tsk, struct mm_struct * mm, unsigned long start, unsigned long nr_pages, int write, int force, struct page ** pages, struct vm_area_struct ** vmas)
+ long get_user_pages_remote(struct task_struct * tsk, struct mm_struct * mm, unsigned long start, unsigned long nr_pages, unsigned int gup_flags, struct page ** pages, struct vm_area_struct ** vmas)
 {
     <...
- unsigned int flags = FOLL_TOUCH | FOLL_REMOTE;
- if (PV0) {
- flags |= IL1;
- }
     ...>
 }
