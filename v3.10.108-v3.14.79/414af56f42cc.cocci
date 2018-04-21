//# pattern-16, witnesses: 2
@@
expression list listE0;
@@
- shmem_find_get_pages_and_swap(listE0)
+ find_get_entries(listE0)
//# pattern-22, witnesses: 2
@@
expression list listE0;
@@
- shmem_deswap_pagevec(listE0)
+ pagevec_remove_exceptionals(listE0)
