//# pattern-6, witnesses: 4
@@
@@
- struct mm_struct * mm = current->mm;
//# pattern-7, witnesses: 2
@@
expression E0;
expression E1;
@@
- set_brk(E0, E1)
+ set_brk(E0, E1, bss_prot)
