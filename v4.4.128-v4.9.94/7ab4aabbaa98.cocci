//# pattern-1, witnesses: 6
@@
expression E0;
expression E1;
expression E2;
expression V3;
@@
- cpufreq_frequency_table_target(policy, E0, E1, E2, &V3)
+ cpufreq_frequency_table_target(policy, E1, E2, &V3)
