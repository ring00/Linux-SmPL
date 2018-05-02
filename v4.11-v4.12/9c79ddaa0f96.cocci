//# pattern-7, witnesses: 2
@@
statement S0;
@@
- if (IS_VF(edev) && qede_stats_arr[i].pf_only) { S0 }
+ if (qede_is_irrelevant_stat(edev, i)) { S0 }
