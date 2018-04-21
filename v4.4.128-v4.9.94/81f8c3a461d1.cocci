//# pattern-2, witnesses: 19
@@
expression list listE0;
@@
- mem_cgroup_end_page_stat(listE0)
+ unlock_page_memcg(listE0)
//# pattern-1, witnesses: 14
@@
expression list listE0;
@@
- mem_cgroup_begin_page_stat(listE0)
+ lock_page_memcg(listE0)
