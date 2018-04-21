//# pattern-3, witnesses: 3
@@
expression V0;
@@
- free_hot_cold_page_list(&V0, 1)
+ free_hot_cold_page_list(&V0, true)
//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
@@
- release_pages(E0, E1, 0)
+ release_pages(E0, E1, false)
//# pattern-2, witnesses: 2
@@
@@
- free_hot_cold_page(page, 0)
+ free_hot_cold_page(page, false)
