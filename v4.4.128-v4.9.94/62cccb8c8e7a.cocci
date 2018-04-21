//# pattern-8, witnesses: 4
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier page;
@@
- struct mem_cgroup * lock_page_memcg(struct page * page)
+ void lock_page_memcg(struct page * page)
 {
     <...
- return E0;
+ return;
     ...>
 }
