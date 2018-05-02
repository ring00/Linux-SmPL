//# pattern-2, witnesses: 2
@@
expression E0;
@@
- E0 = cpufreq_frequency_get_table(policy->cpu)
+ E0 = policy->freq_table
