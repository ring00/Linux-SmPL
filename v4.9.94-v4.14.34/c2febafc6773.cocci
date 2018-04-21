//# pattern-6, witnesses: 2
@@
expression E0;
@@
- pud_t * pud = pud_offset(pgd, E0);
+ pgd_t * p4d = p4d_offset(pgd);
+ pud_t * pud = pud_offset(p4d, E0);
//# pattern-28, witnesses: 2
@@
@@
- pud = pud_offset(pgd, address);
+ pgd_t * p4d = p4d;
+ p4d = p4d_offset(pgd);
+ if (!p4d_present) {
+ }
+ pud = pud_offset(p4d, address);
//# pattern-39, witnesses: 2
@@
@@
- PGDIR_MASK
+ P4D_MASK
