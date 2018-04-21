//# pattern-8, witnesses: 2
@@
expression E0;
statement S1;
@@
- if (pmd_none(E0)) { S1 }
+ if (!pmd_present(E0)) { S1 }
//# pattern-10, witnesses: 2
@@
expression E0;
@@
- pmd_trans_huge(*pmd) || E0
+ is_swap_pmd(*pmd) || pmd_trans_huge(*pmd) || E0
