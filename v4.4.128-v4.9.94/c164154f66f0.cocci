//# pattern-1, witnesses: 4
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- get_user_pages_unlocked(E0, E1, E2, 0, E3)
+ get_user_pages_unlocked(E0, E1, E3, )
//# pattern-2, witnesses: 3
@@
expression E2;
expression V0;
expression V1;
@@
- get_user_pages_unlocked(V0.uaddr, V1.page_count, 0, 1, E2)
+ get_user_pages_unlocked(V0.uaddr, V1.page_count, E2, FOLL_FORCE)
//# pattern-4, witnesses: 2
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
identifier write;
@@
- long get_user_pages_unlocked(unsigned long start, unsigned long nr_pages, int write, int force, struct page ** pages)
+ long get_user_pages_unlocked(unsigned long start, unsigned long nr_pages, struct page ** pages, unsigned int gup_flags)
 {
     <...
- unsigned int flags = FOLL_TOUCH;
- if (PV0) {
- flags |= IL1;
- }
     ...>
 }
