//# pattern-1, witnesses: 5
@@
expression list listE0;
@@
- of_remove_opp_table(listE0)
+ dev_pm_opp_of_remove_table(listE0)
//# pattern-5, witnesses: 3
@@
expression list listE0;
@@
- of_add_opp_table(listE0)
+ dev_pm_opp_of_add_table(listE0)
//# pattern-3, witnesses: 2
@@
expression list listE0;
@@
- of_cpumask_remove_opp_table(listE0)
+ dev_pm_opp_of_cpumask_remove_table(listE0)
