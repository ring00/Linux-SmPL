//# pattern-1, witnesses: 5
@@
identifier s;
@@
 struct cpufreq_driver s = {
+    . = 1 << 6,
 };
//# pattern-2, witnesses: 5
@r0@
identifier i, fn;
@@
struct cpufreq_driver i = {
    .init = fn,
};
@@
identifier policy;
identifier r0.fn;
@@
 int fn(struct cpufreq_policy * policy)
 {
     <...
- policy->cpuinfo.transition_latency = CPUFREQ_ETERNAL;
     ...>
 }
