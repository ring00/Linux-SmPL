//# pattern-4, witnesses: 7
@@
expression E0;
@@
- E0->u_volt_min
+ E0->supply.u_volt_min
//# pattern-6, witnesses: 6
@@
expression E0;
@@
- E0->u_volt_max
+ E0->supply.u_volt_max
//# pattern-8, witnesses: 5
@@
expression E0;
@@
- E0->u_volt
+ E0->supply.u_volt
//# pattern-9, witnesses: 2
@@
@@
- opp->u_amp
+ opp->supply.u_amp
