//# pattern-3, witnesses: 6
@@
expression E0;
expression E1;
@@
- TC_H_MAJ(E0->common.handle) != TC_H_MAJ(TC_H_INGRESS) || E1
+ is_classid_clsact_ingress(E0->common.classid) || E1
//# pattern-4, witnesses: 3
@@
identifier s;
@@
 bool s = {
 };
