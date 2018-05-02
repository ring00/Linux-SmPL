//# pattern-1, witnesses: 2
@@
@@
- rdmsrl(HV_X64_MSR_SCONTROL, sctrl.as_uint64)
+ hv_get_synic_state(sctrl.as_uint64)
//# pattern-2, witnesses: 2
@@
@@
- HV_X64_MSR_SCONTROL
+ hv_set_synic_state
