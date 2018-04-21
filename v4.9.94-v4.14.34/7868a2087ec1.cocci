//# pattern-1, witnesses: 5
@@
expression E0;
@@
- huge_pte_offset(mm, E0)
+ huge_pte_offset(mm, E0, huge_page_size(h))
//# pattern-4, witnesses: 3
@@
expression E0;
expression E1;
@@
- huge_pte_offset(E0, E1)
+ huge_pte_offset(E0, E1, sz)
