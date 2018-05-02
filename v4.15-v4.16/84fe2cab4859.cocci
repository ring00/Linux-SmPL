//# pattern-5, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
expression E1;
identifier policy;
identifier r0.fn;
@@
 struct thermal_cooling_device * fn(struct cpufreq_policy * policy)
 {
     <...
- __cpufreq_cooling_register(E0, policy, E1, NULL)
+ __cpufreq_cooling_register(E0, policy, E1)
     ...>
 }
