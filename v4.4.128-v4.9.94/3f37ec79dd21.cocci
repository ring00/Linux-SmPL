//# pattern-2, witnesses: 2
@@
statement S0;
@@
- if (cc->capabilities & BCMA_CC_CAP_PMU) { S0 }
+ if (bcma_core_cc_has_pmu_watchdog(cc)) { S0 }
