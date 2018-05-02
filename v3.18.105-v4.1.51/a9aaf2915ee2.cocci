//# pattern-1, witnesses: 5
@@
identifier fn;
identifier policy;
@@
 void fn(struct cpufreq_policy * policy)
 {
     <...
- per_cpu()
+ policy->stats
     ...>
 }
//# pattern-3, witnesses: 2
@@
@@
- if (!stat) {
- return 0;
- }
//# pattern-5, witnesses: 2
@r0@
identifier i, fn;
@@
struct freq_attr i = {
    .show = fn,
};
@@
identifier buf;
identifier policy;
identifier r0.fn;
identifier s;
@@
  struct cpufreq_stats * s = {
 };
ssize_t fn(struct cpufreq_policy * policy, char * buf)
 {
     <...
 struct cpufreq_stats * s = {
 };
     ...>
 }
