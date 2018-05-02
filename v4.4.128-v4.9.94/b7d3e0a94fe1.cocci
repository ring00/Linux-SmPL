//# pattern-1, witnesses: 7
@@
expression E0;
expression F1;
@@
- E0->reg_phys_mr = F1;
//# pattern-2, witnesses: 2
@@
expression F0;
@@
- dev->ibdev.rereg_phys_mr = F0;
