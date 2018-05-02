//# pattern-1, witnesses: 2
@r0@
identifier fn;
expression P0;
@@
intel_pstate_adjust_pstate(P0, fn)
@@
identifier cpu;
typedef int32_t;
identifier r0.fn;
@@
 int32_t fn(struct cpudata * cpu)
 {
     <...
- if (cpu->policy == CPUFREQ_POLICY_PERFORMANCE) {
- return cpu->pstate.turbo_pstate;
- }
     ...>
 }
