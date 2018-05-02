//# pattern-3, witnesses: 2
@@
identifier fn;
identifier policy;
@@
 int fn(struct cpufreq_policy * policy)
 {
     <...
- policy->governor->initialized;
     ...>
 }
//# pattern-5, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier policy;
identifier r0.fn;
@@
 void fn(struct cpufreq_policy * policy)
 {
     <...
- gov->exit(dbs_data, E0)
+ gov->exit(dbs_data)
     ...>
 }
