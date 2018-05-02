//# pattern-6, witnesses: 4
@r0@
identifier i, fn;
@@
struct cpufreq_driver i = {
    .ready = fn,
};
@@
identifier policy;
identifier r0.fn;
@@
 void fn(struct cpufreq_policy * policy)
 {
     <...
- policy->related_cpus
+ policy
     ...>
 }
