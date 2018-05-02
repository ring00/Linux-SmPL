//# pattern-1, witnesses: 2
@@
statement S0;
@@
- if (phys_id == PHYS_CPUID_INVALID) { S0 }
+ if (invalid_phys_cpuid(phys_id)) { S0 }
