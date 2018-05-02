//# pattern-1, witnesses: 6
@@
expression E0;
expression E1;
expression E2;
@@
- handle_mm_fault(E0, vma, E1, E2)
+ handle_mm_fault(vma, E1, E2)
