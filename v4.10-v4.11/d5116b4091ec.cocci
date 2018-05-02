//# pattern-1, witnesses: 2
@@
expression E0;
@@
- wrmsrl(HV_X64_MSR_STIMER0_CONFIG, E0)
+ hv_init_timer_config
//# pattern-3, witnesses: 2
@@
expression E0;
@@
- wrmsrl(HV_X64_MSR_STIMER0_COUNT, E0)
+ hv_init_timer
