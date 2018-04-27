//# pattern-2, witnesses: 3
@@
expression E0;
@@
- if (E0->nest) {
- }
//# pattern-6, witnesses: 2
@@
expression E0;
identifier PV1;
@@
- rht_bucket_var(E0, PV1)
+ &E0->buckets[PV1]
//# pattern-11, witnesses: 2
@@
@@
- smp_mb;
