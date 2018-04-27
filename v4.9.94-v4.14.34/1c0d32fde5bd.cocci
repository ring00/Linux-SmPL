//# pattern-5, witnesses: 9
@@
expression ME0;
expression ME1;
@@
- gen_kill_estimator(&ME0, &ME1)
+ gen_kill_estimator(&ME1)
//# pattern-1, witnesses: 7
@@
expression E0;
expression ME1;
expression ME2;
@@
- gnet_stats_copy_rate_est(E0, &ME1, &ME2)
+ gnet_stats_copy_rate_est(E0, &ME2)
//# pattern-2, witnesses: 2
@@
expression E0;
@@
- E0 - r->bps
+ E0 - sample.bps
//# pattern-8, witnesses: 2
@@
expression E0;
@@
- E0 = r->bps
+ E0 = sample.bps
//# pattern-11, witnesses: 2
@@
expression E0;
@@
- E0 = r->pps
+ E0 = sample.pps
//# pattern-18, witnesses: 2
@@
expression E0;
@@
- E0 >= r->bps
+ E0 >= sample.bps
//# pattern-19, witnesses: 2
@@
expression E0;
@@
- E0 >= r->pps
+ E0 >= sample.pps
//# pattern-21, witnesses: 2
@@
expression E0;
@@
- E0 - r->pps
+ E0 - sample.pps
