//# pattern-1, witnesses: 4
@@
expression E0;
expression E1;
@@
- zap_page_range(vma, E0, E1, NULL)
+ zap_page_range(vma, E0, E1)
