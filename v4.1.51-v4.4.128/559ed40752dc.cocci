//# pattern-4, witnesses: 2
@@
identifier fn;
identifier policy;
@@
 int fn(struct cpufreq_policy * policy)
 {
     <...
- cpumask_next_and(j, policy->related_cpus, cpu_present_mask)
+ cpumask_next(j, policy->real_cpus)
     ...>
 }
