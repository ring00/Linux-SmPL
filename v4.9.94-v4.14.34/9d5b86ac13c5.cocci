//# pattern-5, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0 = (E1->pid)
+ E0 = -(E1->pid)
//# pattern-7, witnesses: 2
@@
expression E0;
@@
- if (E0->fl_nspid) {
- }
