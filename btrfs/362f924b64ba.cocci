//# pattern-6, witnesses: 6
@@
@@
- cpu_has_topoext
+ boot_cpu_has(X86_FEATURE_TOPOEXT)
//# pattern-8, witnesses: 2
@@
@@
- cpu_has_perfctr_l2
+ boot_cpu_has(X86_FEATURE_PERFCTR_L2)
//# pattern-9, witnesses: 2
@@
@@
- cpu_has_mtrr
+ boot_cpu_has(X86_FEATURE_MTRR)
//# pattern-11, witnesses: 2
@@
@@
- cpu_has_perfctr_core
+ boot_cpu_has(X86_FEATURE_PERFCTR_CORE)
//# pattern-12, witnesses: 2
@@
@@
- cpu_has_nx
+ boot_cpu_has(X86_FEATURE_NX)
//# pattern-14, witnesses: 2
@@
@@
- cpu_has_perfctr_nb
+ boot_cpu_has(X86_FEATURE_PERFCTR_NB)
//# pattern-15, witnesses: 2
@@
@@
- cpu_has_bpext
+ boot_cpu_has(X86_FEATURE_BPEXT)
