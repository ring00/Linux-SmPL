//# pattern-2, witnesses: 8
@@
expression E0;
@@
- tc_should_offload(dev, tp, E0)
+ tc_should_offload(dev, E0)
//# pattern-1, witnesses: 4
@@
expression E0;
@@
- tc_can_offload(E0, tp)
+ tc_can_offload(E0)
//# pattern-3, witnesses: 2
@@
expression F1;
identifier s;
@@
 const struct Qdisc_class_ops s = {
-    .tcf_cl_offload = F1,
 };
