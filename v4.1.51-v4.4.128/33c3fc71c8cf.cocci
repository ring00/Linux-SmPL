//# pattern-2, witnesses: 2
@@
expression E0;
@@
- pte_young(pteval) || E0
+ pte_young(pteval) || page_is_young(page) || E0
