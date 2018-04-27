//# pattern-1, witnesses: 10
@@
@@
- dst->cpu_switch
+ dst->cpu_dp->ds
//# pattern-2, witnesses: 4
@@
expression E0;
@@
- E0->cpu_switch
+ E0->cpu_dp
//# pattern-6, witnesses: 4
@@
expression E0;
@@
- E0->cpu_port
+ E0->cpu_dp->index
//# pattern-7, witnesses: 2
@@
identifier s;
@@
 s8 s = {
 };
