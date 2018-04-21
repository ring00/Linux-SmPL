//# pattern-1, witnesses: 2
@@
expression E1;
expression ME0;
@@
- set_mb(ME0, E1)
+ smp_store_mb(ME0, E1)
