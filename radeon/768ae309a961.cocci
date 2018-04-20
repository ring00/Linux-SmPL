unknown kind: ConditionalOperator
//# pattern-2, witnesses: 4
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- get_user_pages(E0, E1, E2, 0, E3, NULL)
+ get_user_pages(E0, E1, , E3, NULL)
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
identifier nr_pages;
identifier pages;
identifier start;
identifier vmas;
identifier write;
@@
- long get_user_pages(unsigned long start, unsigned long nr_pages, int write, int force, struct page ** pages, struct vm_area_struct ** vmas)
+ long get_user_pages(unsigned long start, unsigned long nr_pages, unsigned int gup_flags, struct page ** pages, struct vm_area_struct ** vmas)
 {
     <...
- unsigned int flags = FOLL_TOUCH;
- if (PV0) {
- flags |= IL1;
- }
     ...>
 }
