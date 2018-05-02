//# pattern-1, witnesses: 3
@@
expression list listE0;
@@
- hfi1_skip_sge(listE0)
+ rvt_skip_sge(listE0)
//# pattern-4, witnesses: 2
@@
expression V0;
@@
- update_sge(ss, V0)
+ rvt_update_sge(ss, V0, false)
