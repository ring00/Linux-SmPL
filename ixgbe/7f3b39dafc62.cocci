//# pattern-1, witnesses: 6
@@
expression E0;
expression E1;
@@
- is_classid_clsact_ingress(E0->common.classid) || E1
+ !is_classid_clsact_ingress(E0->common.classid) || E1
