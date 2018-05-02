//# pattern-1, witnesses: 2
@@
@@
- rdmsrl(HV_X64_MSR_SIEFP, siefp.as_uint64)
+ hv_get_siefp(siefp.as_uint64)
//# pattern-2, witnesses: 2
@@
@@
- HV_X64_MSR_SIEFP
+ hv_set_siefp
