//# pattern-2, witnesses: 4
@@
expression list listE0;
@@
- of_free_opp_table(listE0)
+ of_remove_opp_table(listE0)
//# pattern-3, witnesses: 3
@@
expression list listE0;
@@
- of_init_opp_table(listE0)
+ of_add_opp_table(listE0)
//# pattern-4, witnesses: 2
@@
expression list listE0;
@@
- of_cpumask_free_opp_table(listE0)
+ of_cpumask_remove_opp_table(listE0)
