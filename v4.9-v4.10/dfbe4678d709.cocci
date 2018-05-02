//# pattern-15, witnesses: 5
@@
expression V0;
@@
- V0->supply
+ V0->supplies[0]
//# pattern-13, witnesses: 2
@@
@@
- new_opp->supply
+ new_opp->supplies[0]
//# pattern-14, witnesses: 2
@@
identifier dev;
identifier new_opp;
identifier opp_table;
@@
 int _opp_add(struct device * dev, struct dev_pm_opp * new_opp, struct opp_table * opp_table)
 {
     <...
- new_opp->supply
+ new_opp->supplies[0]
     ...>
 }
//# pattern-19, witnesses: 2
@@
@@
- opp->supply
+ opp->supplies[0]
//# pattern-20, witnesses: 2
@@
expression list listE0;
@@
- dev_pm_opp_put_regulator(listE0)
+ dev_pm_opp_put_regulators(listE0)
