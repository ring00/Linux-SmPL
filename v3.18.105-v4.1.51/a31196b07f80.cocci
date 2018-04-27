//# pattern-2, witnesses: 3
@@
expression E0;
@@
- E0 != RPS_NO_CPU
+ E0 < nr_cpu_ids
